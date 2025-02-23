# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

import copy
import tempfile
import unittest

import torch
import torchao
import os
current_path = os.path.dirname(os.path.abspath(__file__))
# torch.ops.load_library(current_path + "/../cmake-out/lib/libtorchao_ops_aten.dylib")

from torchao.experimental.quant_api import (
    Int8DynActIntxWeightLinearQuantizer,
    _Int8DynActIntxWeightQuantizedLinearFallback,
)

from torchao.quantization.utils import compute_error

class TestInt8DynActIntxWeightQuantizer(unittest.TestCase):
    def test_accuracy(self):
        group_size = 128
        m = 1
        n = 1071
        k = 4096
        activations = torch.randn(2, 3, m, k, dtype=torch.float32)
        model = torch.nn.Sequential(*[torch.nn.Linear(k, n, bias=False)])

        for nbit in [1, 2, 3, 4, 5, 6, 7, 8]:
            for has_weight_zeros in [True, False]:
                print(f"Testing nbit={nbit}, has_weight_zeros={has_weight_zeros}")
                quantized_model = copy.deepcopy(model)
                quantizer = Int8DynActIntxWeightLinearQuantizer(
                    device="cpu",
                    precision=torch.float32,
                    bitwidth=nbit,
                    groupsize=group_size,
                    has_weight_zeros=has_weight_zeros,
                )
                quantized_model = quantizer.quantize(quantized_model)

                with torch.no_grad():
                    result = quantized_model(activations)
                    reference_impl = _Int8DynActIntxWeightQuantizedLinearFallback()
                    reference_impl.quantize_and_pack_weights(
                        model[0].weight, nbit, group_size, has_weight_zeros
                    )
                    expected_result = reference_impl(activations)

                num_mismatch_at_low_tol = 0
                num_total = result.reshape(-1).shape[0]
                for i in range(num_total):
                    actual_val = result.reshape(-1)[i]
                    expected_val = expected_result.reshape(-1)[i]
                    self.assertTrue(torch.allclose(actual_val, expected_val, atol=1e-6))
                    if not torch.allclose(actual_val, expected_val):
                        num_mismatch_at_low_tol += 1
                
                # import pdb; pdb.set_trace()
                
                sqnr = compute_error(result, expected_result)
                print(f"SQNR: {sqnr}")
                self.assertTrue(sqnr > 40, "SQNR should be greater than 40")

                # Assert at most 5% of entries are not close at a low tolerance
                print("mismatch rate : ", num_mismatch_at_low_tol / num_total)
                self.assertTrue(num_mismatch_at_low_tol / num_total <= 0.05, "Mismatch rate should be less than 5%")

    # def test_export_compile_aoti(self):
    #     group_size = 32
    #     m = 3
    #     k0 = 512
    #     k1 = 256
    #     k2 = 128
    #     k3 = 1024
    #     nbit = 4
    #     has_weight_zeros = False
    #     layers = [
    #         torch.nn.Linear(k0, k1, bias=False),
    #         torch.nn.Linear(k1, k2, bias=False),
    #         torch.nn.Linear(k2, k3, bias=False),
    #     ]
    #     model = torch.nn.Sequential(*layers)

    #     activations = torch.randn(m, k0, dtype=torch.float32)

    #     print("Quantizing model")
    #     quantizer = Int8DynActIntxWeightLinearQuantizer(
    #         device="cpu",
    #         precision=torch.float32,
    #         bitwidth=nbit,
    #         groupsize=group_size,
    #         has_weight_zeros=has_weight_zeros,
    #     )
    #     quantized_model = quantizer.quantize(model)

    #     print("Exporting quantized model")
    #     torch.export.export(quantized_model, (activations,), strict=True)

    #     print("Compiling quantized model")
    #     quantized_model_compiled = torch.compile(quantized_model)
    #     with torch.no_grad():
    #         quantized_model_compiled(activations)

    #     with tempfile.TemporaryDirectory() as tmpdirname:
    #         print("Exporting quantized model with AOTI")
    #         torch._export.aot_compile(
    #             quantized_model,
    #             (activations,),
    #             options={"aot_inductor.output_path": f"{tmpdirname}/model.so"},
    #         )

    #         print("Running quantized model in AOTI")
    #         fn = torch._export.aot_load(f"{tmpdirname}/model.so", "cpu")
    #         fn(activations)


if __name__ == "__main__":
    unittest.main()
