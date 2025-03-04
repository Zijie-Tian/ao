import pandas as pd
import torch
from tqdm import tqdm

from typing import Tuple, Optional, List

# from torchao.ops import linear_8bit_act_1bit0zp_weight, pack_8bit_act_1bit0zp_weight
from torchao.ops import tmac_gemv
from torchao.quantization.marlin_qqq import marlin_qqq_workspace, pack_to_marlin_qqq
from torchao.utils import benchmark_torch_function_in_microseconds
from torchao.quantization.utils import compute_error

# from torchao.experimental.quant_api import _quantize

#> Torch Native Function
from torch.ao.quantization.fx._decomposed import (
    dequantize_per_channel_group,
    quantize_per_channel_group,
)

import re
import configparser
from dataclasses import dataclass

# from torchao.experimental.quant_api import TMAC_CONFIG_PATH, TMACConfig, load_tmac_config_ini, find_tmac_config, pack_tmac_weight
from torchao.experimental.quant_api import *
from torchao.experimental.quant_api import _TMACWeightQuantizedLinearFallback

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

def weight_dequant(qweight_qval, scale):
    """_summary_

    Args:
        qweight_qval (torch.int8): M * K 
        scale (torch.float16): M * (K // group_size)
    """
    out_dtype = torch.float16
    
    dequantized_weight = qweight_qval.T.reshape(cfg.K // cfg.group_size, cfg.group_size, cfg.M).to(out_dtype) - (2 ** (cfg.bits - 1))
    dequantized_weight = dequantized_weight.permute(1, 0, 2) / scale.T
    dequantized_weight = dequantized_weight.permute(1, 0, 2).reshape(cfg.K, cfg.M).to(out_dtype)
    
    return dequantized_weight.T

    

def get_problem(m, n, k, bm, kfactor, simd_n_in=16, simd_n_out=8, group_size=128, nbits=2):
    activations = torch.randn(n, k, dtype=torch.float16)    #> 
    weight = torch.randn(m, k, dtype=torch.float16)
    
    pesudo_qweight, scales = weight_quant(weight, group_size, force_per_tensor=True)
    #! Note this "+2"
    pesudo_qweight = (pesudo_qweight + 2 ** (cfg.bits - 1)).type(torch.uint8)
    scales = 1 / scales.reshape(-1, cfg.K // cfg.group_size).type(torch.float16)
    
    packed_qweight, Scales_t = pack_tmac_weight(
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

    # signed_qweight = pesudo_qweight.to(torch.int8) - 2 ** (cfg.bits - 1)
    # pesudo_qweight = weight_dequant(signed_qweight, scales)

    reference_impl = _TMACWeightQuantizedLinearFallback(
        nbits=cfg.bits, 
        group_size=cfg.group_size
    )
    reference_impl.quantize_and_pack_weights(
        weight, cfg.group_size
    )
    pesudo_qweight = reference_impl.pesudo_qweight

    # pesudo_weight = pesudo_qweight.reshape(-1, cfg.group_size).float()
    # # pesudo_weight = pesudo_weight * scales.unsqueeze(-1).expand_as(pesudo_weight)
    # pesudo_weight = pesudo_weight.view(weight.shape).to(torch.float16)

    return activations, packed_qweight, Scales_t, activations.to(torch.float32), pesudo_qweight,  weight, m, n, k, group_size
    
def benchmark(
    m : int, 
    k : int, 
    n : int,
    bm : int = 128,
    kfactor : int = 16,
    group_size : int = 128,
    nbits : int = 2,
    act_group_size : int = 64,
    g : int = 4
):
    #> Here use FP32, because we on CPU !
    fp32_act, int8_packed_weight, Scales_t, fp32_requant_act, fp32_requant_weight, real_weight, m, n, k, group_size = get_problem(
        m, n, k, bm, kfactor, 16, 8, group_size, nbits
    )
    
    fp32_time = benchmark_torch_function_in_microseconds(torch.matmul, fp32_requant_act, fp32_requant_weight.T )
    results = torch.zeros(m, n, dtype=torch.float16)
    int8_time = benchmark_torch_function_in_microseconds(
        tmac_gemv, 
        fp32_act, int8_packed_weight, Scales_t, 
        m, n, k, nbits, group_size, bm, act_group_size, g,
    )
    
    # ref_impl = reference_impl(fp32_act)
    real_ref = torch.matmul(fp32_act, real_weight.T)
    results = tmac_gemv(fp32_act, int8_packed_weight, Scales_t, m, n, k, nbits, group_size=group_size, bm=bm, act_group_size=act_group_size, g=g)
    pesudo_ref = fp32_requant_act @ fp32_requant_weight.T
    algo_sqnr = compute_error(pesudo_ref, real_ref)
    compute_sqnr = compute_error(results, pesudo_ref)

    return {
        "m": m,
        "k": k,
        "n": n,
        "fp32_latency (ms)": fp32_time,
        "tmac latency (ms)": int8_time,
        "speedup (d/s)": fp32_time / int8_time,
        "Algorithm SQNR (dB)" : algo_sqnr.item(),
        "Compute SQNR (dB)" : compute_sqnr.item()
    }
    

if __name__ == '__main__':
    configs = load_tmac_config_ini(TMAC_CONFIG_PATH)
    
    results = []
    for cfg in configs:
        if cfg.K % cfg.group_size != 0:
            print(f"Skip: {cfg} (K % group_size != 0)")
            continue
        
        results.append(
            benchmark(
                cfg.M, cfg.K, cfg.N, 
                bm=cfg.bm, 
                kfactor=cfg.kfactor, 
                group_size=cfg.group_size, 
                nbits=cfg.bits, 
                act_group_size=cfg.act_group_size, 
                g=cfg.g
            )
        )

    df = pd.DataFrame(results)
    df.to_csv("tmac_time_results.csv", index=False)
    print(df.to_markdown(index=False)) 









