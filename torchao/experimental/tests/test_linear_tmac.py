# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

import torch
from tabulate import tabulate
from transformers import AutoModelForCausalLM, AutoTokenizer, LlamaTokenizer

import copy
import tempfile
import unittest

import torch
import torch.nn as nn
import os
current_path = os.path.dirname(os.path.abspath(__file__))
torch.ops.load_library(current_path + "/../cmake-out/lib/libtorchao_ops_aten.dylib")

from torchao.experimental.quant_api import (
    TMACWeightOnlyLinearQuantizer,
    _TMACWeightQuantizedLinearFallback
)

#> SQNR Larger is better
from torchao.quantization.utils import compute_error

def find_proj_layers(model : nn.Module):
    proj_layers = []
    for name, module in model.named_modules():
        depth = len(name.split('.'))  # 计算层级深度
        if (isinstance(module, nn.Linear) 
            and name.split('.')[-1].endswith('_proj')):
            yield name, module

def weight_quant(weight: torch.Tensor) -> torch.Tensor:
    dtype = weight.dtype
    weight = weight.float()
    scale = weight.abs().mean().clamp(min=1e-5)
    iscale = 1 / scale
    # TODO: multiply by the scale directly instead of inverting it twice
    # (this is also unnecessarily doubly inverted upstream)
    # ref: https://huggingface.co/1bitLLM/bitnet_b1_58-3B/blob/af89e318d78a70802061246bf037199d2fb97020/utils_quant.py#L10
    result = (weight * iscale).round().clamp(-1, 1) / iscale
    return result.type(dtype)

def test_accuracy():
    n = 1
    m = 4096
    k = 4096
    group_size = 2

    tokenizer = LlamaTokenizer.from_pretrained("/Users/tianzijie/hf_models/bitnet_b1_58-3B")
    model = AutoModelForCausalLM.from_pretrained("/Users/tianzijie/hf_models/bitnet_b1_58-3B", torch_dtype=torch.float16).to(
        "cpu"
    ).to(torch.float16)

    model_input = tokenizer("Hello, my dog is cute", return_tensors="pt")
    # activations = model.get_input_embeddings()(input_ids)
    
    import pdb; pdb.set_trace()

    quantized_model = copy.deepcopy(model)
    quantizer = TMACWeightOnlyLinearQuantizer(
        device="cpu",
        precision=torch.float16,
        bitwidth=2,
        batch_size=1,
    )
    quantized_model = quantizer.quantize(quantized_model)
    
    quantized_model.eval()
    with torch.no_grad():
        quantized_model.generate(**model_input, max_new_tokens=50, do_sample=True, temperature=0.7)
    
    import pdb; pdb.set_trace()
    
    # result = quantized_model(activations)       
    


    # for nbit in [2]:
    #     print(f"Testing nbit={nbit}")

    #     # quantized_model = copy.deepcopy(model)
    #     # quantizer = TMACWeightOnlyLinearQuantizer(
    #     #     device="cpu",
    #     #     precision=torch.float32,
    #     #     bitwidth=nbit,
    #     #     batch_size=1,
    #     # )
    #     # quantized_model = quantizer.quantize(quantized_model)
        
    #     # result = quantized_model(activations)            

    #     with torch.no_grad():
    #         # result = quantized_model(activations)
    #         print("RAW model weights : ", model[0].weight)
    #         reference_impl = _TMACWeightQuantizedLinearFallback(nbit)
    #         reference_impl.quantize_and_pack_weights(model.model.layer[0].weight, group_size, has_weight_zeros=True)
    #         expected_result = reference_impl(activations)
    #         raw_result = model(activations)
            
    #         import pdb; pdb.set_trace()

    
    
    
    # for name, linear_layer in find_proj_layers(model):
    #     if not name.endswith('q_proj'):
    #         continue

    #     activations = torch.randn(n, linear_layer.in_features, dtype=torch.float16)
                
    #     with torch.no_grad():
    #         # print("RAW model weights : ", linear_layer.weight)
    #         reference_impl = _TMACWeightQuantizedLinearFallback(2)
    #         reference_impl.quantize_and_pack_weights(linear_layer.weight, group_size, has_weight_zeros=True)
            
    #         expected_result = reference_impl(activations)
    #         raw_result = linear_layer(activations)
    #         # ref_result = quant_ref @ activations.T

    #         sqnr = compute_error(raw_result, expected_result)
    #         print(f"SQNR: {sqnr}")
        
    #         import pdb; pdb.set_trace()


if __name__ == "__main__":
    test_accuracy()