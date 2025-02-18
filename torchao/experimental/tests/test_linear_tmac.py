# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

import copy
import tempfile
import unittest

import torch
import os
current_path = os.path.dirname(os.path.abspath(__file__))
torch.ops.load_library(current_path + "/../cmake-out/lib/libtorchao_ops_aten.dylib")

from torchao.experimental.quant_api import (
    TMACWeightOnlyLinearQuantizer,
    _TMACWeightQuantizedLinearFallback
)

class TestTMACWeightOnlyLinearQuantizer(unittest.TestCase):
    def test_accuracy(self):
        m = 1
        n = 4096
        k = 4096
        model = torch.nn.Sequential(*[torch.nn.Linear(k, n, bias=False)])
        activations = torch.randn(m, k)

        for nbit in [2]:
            print(f"Testing nbit={nbit}")
            quantized_model = copy.deepcopy(model)
            quantizer = TMACWeightOnlyLinearQuantizer(
                device="cpu",
                precision=torch.float32,
                bitwidth=nbit,
                batch_size=1,
            )
            quantized_model = quantizer.quantize(quantized_model)
            
            import pdb; pdb.set_trace()

            # with torch.no_grad():
            #     result = quantized_model(activations)
            #     reference_impl = _TMACWeightQuantizedLinearFallback(nbit)
            #     reference_impl.quantize_and_pack_weights(model[0].weight)
            #     expected_result = reference_impl(activations)
            # self.assertTrue(torch.allclose(result, expected_result))

    # def test_export_compile_aoti(self):
    #     nbit = 4
    #     m = 1
    #     n = 1071
    #     k = 4096
    #     model = torch.nn.Sequential(*[torch.nn.Linear(k, n, bias=False)])
    #     activations = torch.randn(m, k)

    #     print("Quantizing model")
    #     quantizer = TMACWeightOnlyLinearQuantizer(
    #         device="cpu",
    #         precision=torch.float32,
    #         bitwidth=nbit,
    #     )
    #     quantized_model = quantizer.quantize(model)
    #     quantized_model(activations)

    #     print("Exporting model")
    #     with tempfile.TemporaryDirectory() as tempdir:
    #         torch.jit.save(quantized_model, f"{tempdir}/model.pt")
    #         print("Compiling model")
    #         subprocess.run(
    #             [
    #                 "aoti",
    #                 "--input",
    #                 f"{tempdir}/model.pt",
    #                 "--output",
    #                 f"{tempdir}/model.aoti",
    #             ]
    #         )
    #         print("Running model")
    #         subprocess.run(
    #


if __name__ == "__main__":
    unittest.main()
