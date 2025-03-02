import math
import torch
from torch import nn

torch.ops.load_library("/Users/tianzijie/Baselines/ao/torchao/experimental/cmake-out/libtorchao_ops_aten.so")

import torchao
from torchao.ops import tmac_gemv
from torchao.experimental.quant_api import TMAC_CONFIG_PATH, TMACConfig, load_tmac_config_ini, find_tmac_config, pack_tmac_weight


from torchao.experimental.quant_api import (
    _TMACWeightQuantizedLinearFallback
)

def weight_quant(weight, num_bits=1):
    dtype = weight.dtype
    weight = weight.float()
    s =  1 / weight.abs().mean().clamp(min=1e-5)
    result = (weight * s).round().clamp(-1, 1) / s
    return result.type(dtype)


def activation_quant(x, num_bits=8):
    dtype = x.dtype
    x = x.float()
    Qn = -2 ** (num_bits - 1)
    Qp = 2 ** (num_bits - 1) - 1
    s = Qp / x.abs().max(dim=-1, keepdim=True).values.clamp(min=1e-5)
    result = (x * s).round().clamp(Qn, Qp) / s
    return result.type(dtype)


class BitLinear(nn.Linear):

    def __init__(self,
            *kargs,
            weight_bits=2,
            input_bits=8,
            **kwargs
        ):
        super(BitLinear, self).__init__(*kargs, **kwargs)
        """
        RMSNorm is placed outside BitLinear
        """
        self.weight_bits = weight_bits
        self.input_bits = input_bits

    def forward(self, input):

        # quant_input = input + (activation_quant(input, self.input_bits) - input).detach()
        self.quant_input = input.detach()
        self.quant_weight = self.weight + (weight_quant(self.weight, self.weight_bits) - self.weight).detach()

        out = nn.functional.linear(self.quant_input, self.quant_weight)
        if not self.bias is None:
            out += self.bias.view(1, -1).expand_as(out)

        return out



class BitLinearTMAC(nn.Linear):
    def __init__(self,
            *kargs,
            weight_bits=2,
            input_bits=8,
            **kwargs
        ):
        super(BitLinearTMAC, self).__init__(*kargs, **kwargs)
        """
        RMSNorm is placed outside BitLinear
        """

        self.nbits = weight_bits

        self.M, self.K = self.weight.shape
        self.N = 1  #> Only support batch 1 input

        # load tmac config
        if TMAC_CONFIG_PATH:
            self.all_configs = load_tmac_config_ini(TMAC_CONFIG_PATH)
        else :
            raise RuntimeError(f"Cannot find tmac config file in {TMAC_CONFIG_PATH}")

        self.op_config = find_tmac_config(self.all_configs, self.nbits, self.M, self.K, 1)

        assert self.op_config != None, f"Cannot find tmac config for nbits {self.nbits}, M {self.M}, K {self.K}, N {self.N}"

        self.reference_impl = _TMACWeightQuantizedLinearFallback(
            nbits=self.op_config.bits, 
            group_size=self.op_config.group_size
        )
        
        self.pesudo_qweight = None
        self.scale = None
        self.qweight_qval = None
        self.packed_qweight = None
        self.Scale_t = None

    def set_weight(self, weight):
        assert self.op_config != None, f"Cannot find tmac config for nbits {self.nbits}, M {self.M}, K {self.K}, N {self.N}"
        assert weight.shape == (self.M, self.K), f"Weight shape {weight.shape} is not equal to {self.weight.shape}"

        self.weight.data = weight

        self.pesudo_qweight = self.weight + (weight_quant(self.weight, self.nbits) - self.weight).detach()
        self.scale = 1 / torch.max(self.pesudo_qweight.abs())
        self.qweight_qval = torch.round(self.pesudo_qweight / self.scale + 2 ** (self.nbits - 1)).to(torch.uint8)

        self.scale = self.scale * torch.ones((
            self.op_config.M, self.op_config.K // self.op_config.group_size),
            device=self.pesudo_qweight.device, dtype=self.pesudo_qweight.dtype
        )

        self.packed_qweight, self.Scales_t = pack_tmac_weight(
            self.qweight_qval,
            self.scale,
            None,
            self.op_config.bits,
            self.op_config.g,
            self.op_config.bm,
            self.op_config.kfactor,
            self.op_config.simd_n_in,
            self.op_config.simd_n_out
        )
        self.Scales_t = self.Scales_t.to(torch.float16)

        self.reference_impl.quantize_and_pack_weights(
            weight, self.op_config.group_size
        )

    def quantize_and_pack_weight(self):
        return self.set_weight(self.weight.data)

    def _load_state_dict(self, state_dict, strict = True):
        super()._load_state_dict(state_dict, strict)
        import pdb; pdb.set_trace()
        self.quantize_and_pack_weight()

    def _reference_forward_2d(self, input):
        return self.reference_impl(input)
        
    def _forward_2d(self, input):
        input = input.to(torch.float16)
        
        LUT_Scales, LUT_Biases, QLUT = torch.ops.torchao.preprocess(
            input, 
            self.op_config.M, 
            self.op_config.K, 
            self.op_config.N, 
            self.op_config.act_group_size, 
            self.op_config.g, 
            self.op_config.bits)

        import pdb; pdb.set_trace()
    
        # C = torch.zeros((N, M), dtype=torch.float16)
        C = torch.ops.torchao.qgemm_lut(
            self.packed_qweight, QLUT, self.Scales_t, LUT_Scales, LUT_Biases,
            self.op_config.M, self.op_config.K, self.op_config.N, self.op_config.bm, self.op_config.g, self.op_config.bits
        )
        
        # C = tmac_gemv(
        #     input,
        #     self.packed_qweight,
        #     1 / self.Scales_t,
        #     self.op_config.M,
        #     self.op_config.N,
        #     self.op_config.K,
        #     self.op_config.bits,
        #     self.op_config.group_size,
        #     self.op_config.bm,
        #     self.op_config.act_group_size,
        #     self.op_config.g,
        # ) 
        return C

    def forward(self, input):
        # quantize input
        
        if self.pesudo_qweight is None or self.scale is None or self.qweight_qval is None or self.packed_qweight is None:
            self.quantize_and_pack_weight()
            
        if input.dim() == 2 and input.shape[0] == 1:
            return self._forward_2d(input)
        
        splited_input = torch.unbind(input, dim=1)
        if self.bias is None:
            res = [self._forward_2d(splited_input[i]) for i in range(len(splited_input))]
        else :
            res = [self._forward_2d(splited_input[i]) + self.bias for i in range(len(splited_input))]
        result = torch.stack(res, dim=1)

        return result




