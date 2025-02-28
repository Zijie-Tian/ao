// Copyright (c) Meta Platforms, Inc. and affiliates.
// All rights reserved.
//
// This source code is licensed under the license found in the
// LICENSE file in the root directory of this source tree.

#include <torchao/experimental/ops/tmac/op_tmac-impl.hpp>

TORCH_LIBRARY_FRAGMENT(torchao, m) {
    m.def("preprocess(Tensor activation, int M, int K, int N, int act_group_size, int g, int bits) -> Tensor[]");
    m.def("qgemm_lut(Tensor activations, Tensor qlut, Tensor scales, Tensor lut_scales, Tensor lut_bias, int M, int K, int N, int bm, int g, int bits) -> Tensor");
}

TORCH_LIBRARY_IMPL(torchao, CPU, m) {
    m.impl("preprocess", &preprocess);
    m.impl("qgemm_lut", &qgemm_lut);
}

TORCH_LIBRARY_IMPL(torchao, CUDA, m) {
    m.impl("preprocess", &preprocess);
    m.impl("qgemm_lut", &qgemm_lut);
}

