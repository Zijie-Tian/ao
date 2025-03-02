import numpy as np
import torch
from torch import nn

import torchao
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
            weight_bits=1,
            input_bits=8,
            **kwargs
        ):
        super(BitLinear, self).__init__(*kargs, **kwargs)
        """
        RMSNorm is placed outside BitLinear
        """
        self.weight_bits = weight_bits
        self.input_bits = input_bits

    def quant_weight(self):
        return self.weight + (weight_quant(self.weight, self.weight_bits) - self.weight).detach()

    def quant_activation(self, input):
        return input + (activation_quant(input, self.input_bits) - input).detach()

    def forward(self, input):
        
        quant_input = input + (activation_quant(input, self.input_bits) - input).detach()
        quant_weight = self.weight + (weight_quant(self.weight, self.weight_bits) - self.weight).detach()

        out = nn.functional.linear(quant_input, quant_weight)
        if not self.bias is None:
            out += self.bias.view(1, -1).expand_as(out)

        return out


# 计算信噪比的函数
def compute_error(x, y):
    Ps = np.linalg.norm(x)
    Pn = np.linalg.norm(x - y)
    return 20 * np.log10(Ps / Pn)

# 设置随机种子保证可重复性
# torch.manual_seed(0)

# 创建测试参数
in_features = 64
out_features = 128
batch_size = 32

# 创建标准Linear层和BitLinear层
standard_linear = nn.Linear(in_features, out_features, bias=False)
bit_linear = BitLinear(in_features, out_features, weight_bits=1, input_bits=8, bias=False)
# 定义一个你希望固定的权重Tensor
fixed_weight = torch.ones(out_features, in_features)  # 示例：随机初始化
# fixed_weight[:, ::2] = 0
fixed_weight[::2, :] = 0
standard_linear.weight = nn.Parameter(fixed_weight)
standard_linear.weight.requires_grad_(False)

# 同步参数（权重和偏置）
with torch.no_grad():
    bit_linear.weight.data.copy_(standard_linear.weight.data)

# 生成随机输入数据
input_data = torch.randn(batch_size, in_features)

# 前向传播
output_standard = standard_linear(input_data)
output_bit = bit_linear(input_data)

print("Baseline : ", output_standard)
print("BitLinear: ", output_bit)

# 转换为numpy计算误差
error_db = compute_error(output_standard.detach().numpy(),
                        output_bit.detach().numpy())

print(f"SNR between Standard and BitLinear: {error_db:.2f} dB")

print("BitLinear quantized weight: ", bit_linear.quant_weight())

print("Standard weight: ", standard_linear.weight)

print("BitLinear quantized activation: ", bit_linear.quant_activation(input_data))

print("Standard activation: ", input_data)

import pdb; pdb.set_trace()