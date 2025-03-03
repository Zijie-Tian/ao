import pandas as pd
import torch
from tqdm import tqdm

import torchao
from torchao.ops import (  # 假设已通过之前的方法生成函数
    mps_linear_fp_act_1bit_weight,
    mps_linear_fp_act_2bit_weight,
    mps_linear_fp_act_3bit_weight,
    mps_linear_fp_act_4bit_weight,
    mps_linear_fp_act_5bit_weight,
    mps_linear_fp_act_6bit_weight,
    mps_linear_fp_act_7bit_weight,
    mps_pack_weight_1bit,
    mps_pack_weight_2bit,
    mps_pack_weight_3bit,
    mps_pack_weight_4bit,
    mps_pack_weight_5bit,
    mps_pack_weight_6bit,
    mps_pack_weight_7bit,
)
from torchao.quantization.marlin_qqq import marlin_qqq_workspace, pack_to_marlin_qqq
from torchao.utils import benchmark_torch_function_in_microseconds
from torchao.quantization.utils import compute_error

from torchao.experimental.quant_api import _quantize

#> Torch Native Function
from torch.ao.quantization.fx._decomposed import (
    dequantize_per_channel_group,
    quantize_per_channel_group,
)

def weight_quant(weight, group_size, force_per_tensor=False):
    dtype = weight.dtype
    org_w_shape = list(weight.shape)
    M, K = weight.shape

    if not force_per_tensor:
        assert weight.shape[1] % group_size == 0, "group_size must be a divisor of weight.shape[1]"
        weight = weight.reshape(M, K// group_size, group_size).float()
        scale = 1 / weight.abs().mean(dim=-1).clamp(min=1e-5)
        qweight = (weight * scale.unsqueeze(-1).expand_as(weight)).round().clamp(-1, 1)
        qweight = qweight.type(dtype).reshape(org_w_shape)
    else :
        weight = weight.float()
        scale = 1 / weight.abs().mean().clamp(min=1e-5)
        qweight = (weight * scale).round().clamp(-1, 1)
        scale = scale * torch.ones(M, K // group_size).to(dtype)

    return qweight, scale

def get_problem(m, n, k, bit_width=1, group_size=128):
    # activations is        (N, K)
    # weight is             (M, K)
    # scales is             (K // group_size, M)
    # zero_points is        (K // group_size, M)
    activations = torch.randn(n, k, dtype=torch.float32)
    weight = torch.randn(m, k, dtype=torch.float32)
    
    # 动态获取量化函数
    pack_func = globals()[f"mps_pack_weight_{bit_width}bit"]
    linear_func = globals()[f"mps_linear_fp_act_{bit_width}bit_weight"]
    
    pesudo_qweight_qval, scales, zero_points = _quantize(
        weight, group_size, bit_width, has_weight_zeros=True, signed=False
    )
    
    # _scales = scales.unsqueeze(2).repeat(1, 1, group_size).view(m, -1)[:, :k]
    # _zero_points = zero_points.unsqueeze(2).repeat(1, 1, group_size).view(m, -1)[:, :k]
    # dequantized_weight = (pesudo_qweight_qval - _zero_points) * _scales
    #! EQUAL to above
    ao_dequant_weight = dequantize_per_channel_group(
        w_int8=pesudo_qweight_qval,
        scales=scales,
        zero_points=zero_points,
        quant_min=None,  # TODO: why is this an arg for this function
        quant_max=None,  # TODO: why is this an arg for this function
        dtype=None,  # TODO: why is this an arg for this function
        group_size=group_size,
        output_dtype=torch.float32,
    )

    #! Now pesudo_qweight_qval MUST ON CPU.    
    packed_qweight = pack_func(pesudo_qweight_qval)

    scaled_zero_points = - zero_points * scales

    #> Should do TRANSPOSE:
    scaled_zero_points = scaled_zero_points.transpose(1, 0)
    scales = scales.transpose(1, 0)

    return {
        "fp32_act": activations.to(torch.device("mps")),
        "fp32_weight": weight.to(torch.device("mps")),
        "fp32_dequant_weight": ao_dequant_weight.to(torch.device("mps")),
        "fp16_dequant_weight": ao_dequant_weight.to(torch.float16).to(torch.device("mps")),
        "pesudo_qweight_qval": pesudo_qweight_qval.to(torch.device("mps")),
        "packed_qweight": packed_qweight.to(torch.device("mps")),
        "scales" : scales.to(torch.device("mps")).contiguous(),
        "zero_points" : scaled_zero_points.to(torch.device("mps")).contiguous(),
        "m": m,
        "n": n,
        "k": k,
        "group_size": group_size,
        "bit_width": bit_width
    }

def benchmark(m: int, k: int, n: int, bit_width: int = 1):
    problem = get_problem(m, n, k, bit_width)
    
    # torch.save(problem["fp32_act"].cpu(), f"activation.pt")
    # torch.save(problem["pesudo_qweight_qval"].cpu(), f"weight_qval.pt")
    # torch.save(problem["scales"].cpu(), f"scales.pt")
    # torch.save(problem["zero_points"].cpu(), f"zero_points.pt")
    # return {}
    
    # 动态获取算子函数
    linear_func = globals()[f"mps_linear_fp_act_{bit_width}bit_weight"]
    
    # 基准测试
    fp32_time = benchmark_torch_function_in_microseconds(
        torch.matmul, problem["fp32_act"], problem["fp32_dequant_weight"].T
    )
    
    int_time = benchmark_torch_function_in_microseconds(
        linear_func,
        problem["fp32_act"],
        problem["packed_qweight"],
        problem["group_size"],
        problem["scales"],
        problem["zero_points"],
    )
    
    real_ref = problem["fp32_act"] @ problem["fp32_weight"].T
    results = linear_func(
        problem["fp32_act"],
        problem["packed_qweight"],
        problem["group_size"],
        problem["scales"],
        problem["zero_points"],
    )
    pesudo_ref = problem["fp32_act"] @ problem["fp32_dequant_weight"].T
    
    return {
        "m": m,
        "k": k,
        "n": n,
        "bit_width": bit_width,
        "fp32_latency (ms)": fp32_time,
        "latency (ms)": int_time,
        "speedup (d/s)": fp32_time / int_time,
        "Algorithm SQNR (dB)": compute_error(pesudo_ref, real_ref).item(),
        "Compute SQNR (dB)": compute_error(results, pesudo_ref).item()
    }

if __name__ == '__main__':
    torch.manual_seed(42)
    k_vals = (11008, 4096, 14336, 4096)
    m_vals = (4096, 11008, 4096, 14336)
    bit_widths = [1, 4]  # 可扩展更多 bit 数

    results = []
    for bit in bit_widths:
        for n in tqdm([1 << i for i in range(4)], desc=f"Testing {bit}-bit"):
            for m, k in zip(m_vals, k_vals):
                results.append(benchmark(m, k, n, bit_width=bit))
    
    # 保存结果
    df = pd.DataFrame(results)
    df.to_csv(f"mps_weight_only_results.csv", index=False)
    print(df.to_markdown(index=False))