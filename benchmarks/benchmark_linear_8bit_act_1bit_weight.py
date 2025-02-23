import pandas as pd
import torch
from tqdm import tqdm

from torchao.ops import linear_8bit_act_1bit0zp_weight, pack_8bit_act_1bit0zp_weight
from torchao.quantization.marlin_qqq import marlin_qqq_workspace, pack_to_marlin_qqq
from torchao.utils import benchmark_torch_function_in_microseconds
from torchao.quantization.utils import compute_error

from torchao.experimental.quant_api import _quantize

#> Torch Native Function
from torch.ao.quantization.fx._decomposed import (
    dequantize_per_channel_group,
    quantize_per_channel_group,
)

def get_problem(m, n, k, group_size=128, nbits=1):
    activations = torch.randn(n, k, dtype=torch.float32)    #> 
    weight = torch.randn(m, k, dtype=torch.float32)
    
    #> Quantize weights and pack it. (Note : _quantize weight is [M, K])
    pesudo_qweight, scales, zero_points = _quantize(weight, group_size, nbits, has_weight_zeros=False)
    packed_qweight = pack_8bit_act_1bit0zp_weight(pesudo_qweight, scales.reshape(-1), group_size)

    #> Quantize and requantize activation.
    dequant_weight = dequantize_per_channel_group(
        w_int8=pesudo_qweight,
        scales=scales,
        zero_points=(
            zero_points if zero_points is not None else torch.zeros_like(scales)
        ),
        quant_min=None,  # TODO: why is this an arg for this function
        quant_max=None,  # TODO: why is this an arg for this function
        dtype=None,  # TODO: why is this an arg for this function
        group_size=group_size,
        output_dtype=torch.float32,
    )

    quantized_activations, act_scales, act_zeros = _quantize(activations, k, 8, has_weight_zeros=True)
    
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
    
    return activations, packed_qweight, fp32_requant_activations, dequant_weight, m, n, k, group_size
    
def benchmark(m : int, k : int, n : int):
    #> Here use FP32, because we on CPU !
    fp32_act, int8_packed_weight, fp32_requant_act, fp32_requant_weight, m, n, k, group_size = get_problem(m, n, k)
    
    fp32_time = benchmark_torch_function_in_microseconds(torch.matmul, fp32_requant_act, fp32_requant_weight.T)
    int8_time = benchmark_torch_function_in_microseconds(
        linear_8bit_act_1bit0zp_weight, 
        fp32_act, int8_packed_weight, 
        m, n, k, group_size
    )
    
    results = linear_8bit_act_1bit0zp_weight(fp32_act, int8_packed_weight, m, n, k, group_size)
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
    k_vals = (4096, 11008, 4096, 14336, 4096)
    m_vals = (4096, 4096, 11008, 4096, 14336)

    results = []
    for n in tqdm([1 << i for i in range(4)]):
        for m, k in zip(m_vals, k_vals):
            results.append(benchmark(m, k, n))
    
    df = pd.DataFrame(results)
    df.to_csv("linear_8bit_act_1bit0zp_time_results.csv", index=False)
    print(df.to_markdown(index=False)) 






