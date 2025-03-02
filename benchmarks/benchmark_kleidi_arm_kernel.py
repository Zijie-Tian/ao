import pandas as pd
import torch
from tqdm import tqdm

from torchao.ops import (  # 假设已通过之前的方法生成函数
    linear_8bit_act_1bit0zp_weight,
    linear_8bit_act_2bit0zp_weight,
    linear_8bit_act_3bit0zp_weight,
    linear_8bit_act_4bit0zp_weight,
    linear_8bit_act_5bit0zp_weight,
    linear_8bit_act_6bit0zp_weight,
    linear_8bit_act_7bit0zp_weight,
    linear_8bit_act_8bit0zp_weight,
    pack_8bit_act_1bit0zp_weight,
    pack_8bit_act_2bit0zp_weight,
    pack_8bit_act_3bit0zp_weight,
    pack_8bit_act_4bit0zp_weight,
    pack_8bit_act_5bit0zp_weight,
    pack_8bit_act_6bit0zp_weight,
    pack_8bit_act_7bit0zp_weight,
    pack_8bit_act_8bit0zp_weight,
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

def get_problem(m, n, k, bit_width=1, group_size=128):
    activations = torch.randn(n, k, dtype=torch.float32)
    weight = torch.randn(m, k, dtype=torch.float32)
    
    # 动态获取量化函数
    pack_func = globals()[f"pack_8bit_act_{bit_width}bit0zp_weight"]
    linear_func = globals()[f"linear_8bit_act_{bit_width}bit0zp_weight"]

    # 量化权重
    pesudo_qweight, scales, zero_points = _quantize(
        weight, group_size, bit_width, has_weight_zeros=False
    )
    packed_qweight = pack_func(pesudo_qweight, scales.reshape(-1), group_size)

    # 量化激活
    quantized_activations, act_scales, act_zeros = _quantize(
        activations, k, 8, has_weight_zeros=True
    )
    
    fp32_requant_activations = dequantize_per_channel_group(
        w_int8=quantized_activations,
        scales=act_scales,
        zero_points=act_zeros,
        quant_min=None,  # TODO: why is this an arg for this function
        quant_max=None,  # TODO: why is this an arg for this function
        dtype=None,  # TODO: why is this an arg for this function
        group_size=k,
        output_dtype=torch.float32,
    )

    return {
        "fp32_act": activations,
        "fp32_weight": weight,
        "packed_qweight": packed_qweight,
        "fp32_requant_act": fp32_requant_activations,
        "m": m,
        "n": n,
        "k": k,
        "group_size": group_size,
        "bit_width": bit_width
    }

def benchmark(m: int, k: int, n: int, bit_width: int = 1):
    problem = get_problem(m, n, k, bit_width)
    
    # 动态获取算子函数
    linear_func = globals()[f"linear_8bit_act_{bit_width}bit0zp_weight"]
    
    # 基准测试
    fp32_time = benchmark_torch_function_in_microseconds(
        torch.matmul, problem["fp32_requant_act"], problem["fp32_weight"].T
    )
    
    int_time = benchmark_torch_function_in_microseconds(
        linear_func,
        problem["fp32_act"],
        problem["packed_qweight"],
        problem["m"],
        problem["n"],
        problem["k"],
        problem["group_size"]
    )
    
    real_ref = problem["fp32_act"] @ problem["fp32_weight"].T
    results = linear_func(
        problem["fp32_act"],
        problem["packed_qweight"],
        problem["m"],
        problem["n"],
        problem["k"],
        problem["group_size"]
    )
    pesudo_ref = problem["fp32_requant_act"] @ problem["fp32_weight"].T
    
    return {
        "m": m,
        "k": k,
        "n": n,
        "bit_width": bit_width,
        "fp32_latency (ms)": fp32_time,
        "latency (ms)": int_time,
        "speedup (d/s)": fp32_time / int_time,
        "Algorithm SQNR (dB)": compute_error(pesudo_ref, real_ref),
        "Compute SQNR (dB)": compute_error(results, pesudo_ref)
    }

if __name__ == '__main__':
    k_vals = (4096, 11008, 4096, 14336, 4096)
    m_vals = (4096, 4096, 11008, 4096, 14336)
    bit_widths = [1, 2, 3, 4, 5, 6, 7, 8]  # 可扩展更多 bit 数

    results = []
    for bit in bit_widths:
        for n in tqdm([1 << i for i in range(4)], desc=f"Testing {bit}-bit"):
            for m, k in zip(m_vals, k_vals):
                results.append(benchmark(m, k, n, bit_width=bit))
    
    # 保存结果
    df = pd.DataFrame(results)
    df.to_csv(f"kledi_arm_results.csv", index=False)
    print(df.to_markdown(index=False))