import pandas as pd
import torch
from tqdm import tqdm

from typing import Tuple, Optional, List

# from torchao.ops import linear_8bit_act_1bit0zp_weight, pack_8bit_act_1bit0zp_weight
from torchao.ops import tmac_gemv
from torchao.quantization.marlin_qqq import marlin_qqq_workspace, pack_to_marlin_qqq
from torchao.utils import benchmark_torch_function_in_microseconds
from torchao.quantization.utils import compute_error

from torchao.experimental.quant_api import _quantize

#> Torch Native Function
from torch.ao.quantization.fx._decomposed import (
    dequantize_per_channel_group,
    quantize_per_channel_group,
)

import re
import configparser
from dataclasses import dataclass

CONFIG_PATH = "/Users/tianzijie/Baselines/ao/torchao/experimental/ops/tmac/t-mac/kcfg.ini" 

@dataclass
class QuantConfig:
    """量化计算配置参数的数据类"""
    # 基础参数
    bits: int = 2
    M: int = 3200
    N: int = 1
    K: int = 3200
    zero_point: bool = True
    dtype: str = "int8"

    # 分组参数
    g: int = 4
    group_size: int = 128
    act_group_size: int = 64
    m_groups: int = -1

    # 新增架构参数
    bm: int = 128     # 块大小（block_m）
    kfactor: int = 16 # K轴缩放因子

    @classmethod
    def from_section(cls, section_name: str, config_parser: configparser.ConfigParser) -> 'QuantConfig':
        """从INI文件section解析出配置对象"""
        # 从section名称提取基础参数
        match = re.match(
            r'^qgemm_lut_t\d+_(\w+)_m(\d+)_k(\d+)_n(\d+)_b(\d+)$',
            section_name
        )
        if not match:
            raise ValueError(f"Invalid section format: {section_name}")

        # 构建基础参数字典
        base_params = {
            'dtype': match.group(1),
            'M': int(match.group(2)),
            'K': int(match.group(3)),
            'N': int(match.group(4)),
            'bits': int(match.group(5))
        }

        base_params['M'] = base_params['M'] // base_params['bits']

        # 合并文件配置参数
        section = config_parser[section_name]
        param_dict = base_params.copy()

        # 处理所有可能覆盖的参数
        int_keys = ['g', 'group_size', 'act_group_size', 'm_groups', 'bm', 'kfactor']
        bool_keys = ['zero_point']

        for key in int_keys:
            if section.get(key) is not None:
                param_dict[key] = section.getint(key)

        for key in bool_keys:
            if section.get(key) is not None:
                param_dict[key] = section.getboolean(key)

        return cls(**param_dict)

def load_op_config_ini(file_path: str) -> List[QuantConfig]:
    """读取INI文件并生成QuantConfig对象列表"""
    config = configparser.ConfigParser()
    config.read(file_path)

    return [
        QuantConfig.from_section(section, config)
        for section in config.sections()
        if re.match(r'^qgemm_lut_t\d+_', section)  # 过滤有效section
    ]

#> >>>>>>>>>>>>>>>>>>>>>>>>>>>

def preprocess_weights_torch(
    w: torch.Tensor,
    scales: torch.Tensor,
    zeros: Optional[torch.Tensor] = None,
    bits: int = 4,
    g: int = 4,
    bm: int = 512,
    kfactor: int = 16,
    simd_n_in: int = 16,
    simd_n_out: int = 8,
) -> Tuple[torch.Tensor, torch.Tensor]:
    assert w.dtype == torch.uint8, "Weights must be uint8 type"

    M_orig, K = w.shape
    M = M_orig * bits
    ngroups_per_elem = 8 // g

    # Extract bits and transpose
    w_bits = [(w >> ib) & 1 for ib in range(bits)]
    w = torch.stack(w_bits, dim=-1)  # (M_orig, K, bits)
    w = w.permute(0, 2, 1)  # (M_orig, bits, K)
    w = w.reshape(M_orig, bits, K // g, g)

    # Group-wise bit shifting and summation
    w = sum([w[:, :, :, ig] << ig for ig in range(g)])

    # Reshape and permutation operations
    # Match NumPy's reshape/transpose sequence exactly
    w = w.reshape(M // bits // simd_n_out, simd_n_out, bits, K // g)
    w = w.permute(0, 2, 1, 3)  # (M//bits//so, bits, so, K//g)

    mgroup = ngroups_per_elem * simd_n_in
    w = w.reshape(M // mgroup, ngroups_per_elem, simd_n_in, K // g)
    w = w.permute(0, 2, 1, 3)  # (M//mg, sin, ngpe, K//g)

    # Final transformations with exact NumPy equivalent operations
    w = w.reshape(
        M // bm, bm // mgroup, simd_n_in, ngroups_per_elem,
        K // g // kfactor, kfactor
    ).permute(0, 4, 1, 5, 2, 3)  # Match NumPy's transpose order
    
    w = sum([w[..., ng] << (ng * g) for ng in range(ngroups_per_elem)])
    w = w.reshape(M // bm, K // g // kfactor, bm // mgroup, kfactor, simd_n_in)
    w = w.reshape(M // bm, K // g, bm // ngroups_per_elem)

    # Process scales and zeros
    if scales.numel() >= M_orig:
        group_size = K // scales.shape[1]
        scales = scales.reshape(M_orig, -1, K // group_size)
        scales = scales.reshape(M // bm, bm // bits, K // group_size)
        scales = scales.permute(0, 2, 1)
        scales = scales.reshape(M // bm, K // group_size, -1, simd_n_out)
        
        if zeros is not None:
            zeros = zeros.reshape(M // bm, bm // bits, K // group_size)
            zeros = zeros.permute(0, 2, 1)
            zeros = zeros.reshape(M // bm, K // group_size, -1, simd_n_out)
            scales = torch.stack([scales, zeros], dim=-2)
        
        scales = scales.reshape(M // bm, K // group_size, -1)
    else:
        if zeros is not None:
            scales = torch.cat([scales, zeros], dim=0)

    return w, scales

def weight_quant(weight, group_size):
    dtype = weight.dtype
    org_w_shape = weight.shape

    if group_size > 0:
        assert weight.shape[1] % group_size == 0, "group_size must be a divisor of weight.shape[1]"
        weight = weight.reshape(-1, group_size).float()
        scale = 1 / weight.abs().mean(dim=1).clamp(min=1e-5)
        qweight = (weight * scale.unsqueeze(-1).expand_as(weight)).round().clamp(-1, 1)
    else :
        weight = weight.float()
        scale = 1 / weight.abs().mean().clamp(min=1e-5)
        qweight = (weight * scale).round().clamp(-1, 1)

    return qweight.type(dtype).reshape(org_w_shape), scale

def get_problem(m, n, k, bm, kfactor, simd_n_in=16, simd_n_out=8, group_size=128, nbits=2):
    activations = torch.randn(n, k, dtype=torch.float32)    #> 
    weight = torch.randn(m, k, dtype=torch.float32)
    
    #> Quantize weights and pack it. (Note : _quantize weight is [M, K])
    # pesudo_qweight, scales, zero_points = _quantize(weight, group_size, nbits, has_weight_zeros=False)
    # packed_qweight = pack_8bit_act_1bit0zp_weight(pesudo_qweight, scales.reshape(-1), group_size)
    
    pesudo_qweight, scales = weight_quant(weight, group_size)
    #! Note this "+2"
    pesudo_qweight = (pesudo_qweight + 2 ** (cfg.bits - 1)).type(torch.uint8)
    scales = scales.reshape(-1, cfg.K // cfg.group_size).type(torch.float16)
    
    packed_qweight, scales = preprocess_weights_torch(
        pesudo_qweight, 
        scales, 
        None,
        bits=nbits,
        g=4,
        bm=bm,
        kfactor=kfactor,
        simd_n_in=simd_n_in,
        simd_n_out=simd_n_out
    )
    zero_points = None

    pesudo_weight = pesudo_qweight.reshape(-1, cfg.group_size).float()
    # pesudo_weight = pesudo_weight * scales.unsqueeze(-1).expand_as(pesudo_weight)
    pesudo_weight = pesudo_weight.view(weight.shape)

    return activations, packed_qweight, scales, activations, pesudo_qweight, m, n, k, group_size
    
def benchmark(
    m : int, 
    k : int, 
    n : int,
    bm : int = 128,
    kfactor : int = 16,
    group_size : int = 128,
    nbits : int = 2
):
    #> Here use FP32, because we on CPU !
    fp32_act, int8_packed_weight, Scales_t, fp32_requant_act, fp32_requant_weight, m, n, k, group_size = get_problem(
        m, n, k, bm, kfactor, 16, 8, group_size, nbits
    )
    
    # fp32_time = benchmark_torch_function_in_microseconds(torch.matmul, fp32_requant_act, fp32_requant_weight.T)
    fp32_time = 100
    results = torch.zeros(m, n, dtype=torch.float16)
    int8_time = benchmark_torch_function_in_microseconds(
        tmac_gemv, 
        fp32_act, int8_packed_weight, Scales_t, 
        results,
        m, n, k, nbits, group_size, 4
    )

    
    results = tmac_gemv(fp32_act, int8_packed_weight, m, n, k, group_size)
    pesudo_ref = fp32_requant_act @ fp32_requant_weight.T
    compute_sqnr = compute_error(results, pesudo_ref)

    return {
        "m": m,
        "k": k,
        "n": n,
        "fp32_latency (ms)": fp32_time,
        "linear_8bit_act_1bit0zp_weight latency (ms)": int8_time,
        "speedup (d/s)": fp32_time / int8_time,
        "Compute SQNR (dB)" : compute_sqnr
    }
    

if __name__ == '__main__':
    #> weight(m * k) * x(k * n) = new_x(m * n)
    # m_vals = (4096, 4096, 11008, 4096, 14336)
    # k_vals = (4096, 11008, 4096, 14336, 4096)

    configs = load_op_config_ini(CONFIG_PATH)

    for cfg in configs:
        print(cfg)
        benchmark(cfg.M, cfg.K, cfg.N, cfg.bm, cfg.kfactor, cfg.group_size, cfg.bits)
    

    # results = []
    # for n in tqdm([1 << i for i in range(4)]):
    #     for m, k in zip(m_vals, k_vals):
    #         # results.append(benchmark(m, k, n))
    
    # df = pd.DataFrame(results)
    # df.to_csv("linear_8bit_act_1bit0zp_time_results.csv", index=False)
    # print(df.to_markdown(index=False)) 









