// Copyright (c) Meta Platforms, Inc. and affiliates.
// All rights reserved.
//
// This source code is licensed under the license found in the
// LICENSE file in the root directory of this source tree.

#include <torchao/experimental/ops/tmac/op_tmac-impl.hpp>

TORCH_LIBRARY_FRAGMENT(torchao, m) {
    m.def("preprocess(Tensor weights, Tensor lut_scales, Tensor qlut, Tensor lut_bias, int M, int K, int N) -> Tensor");
    m.def("qgemm_lut(Tensor activations, Tensor qlut, Tensor scales, Tensor lut_scales, Tensor lut_bias, Tensor result, int M, int K, int N, int bits) -> Tensor");
}

TORCH_LIBRARY_IMPL(torchao, CPU, m) {
    // m.impl("tmac_gemv", torchao::ops::tmac::tmac);
    m.impl("preprocess", &preprocess);
    m.impl("qgemm_lut", &qgemm_lut);
}

// TORCH_LIBRARY_IMPL(torchao, Meta, m) {
//     m.impl("tmac", torchao::ops::tmac::tmac);
// }

