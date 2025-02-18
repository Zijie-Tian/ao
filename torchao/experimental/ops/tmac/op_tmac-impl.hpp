// Copyright (c) Meta Platforms, Inc. and affiliates.
// All rights reserved.
//
// This source code is licensed under the license found in the
// LICENSE file in the root directory of this source tree.

#pragma once

//> Include header of Torch.
#include <torchao/experimental/ops/library.h>
#include <torch/extension.h>
#include <c10/util/Logging.h>

#include <sstream>
#include <optional>
#include <vector>

#include "t-mac/kernels.h"

namespace {
    // 核心预处理函数（支持多输出和灵活输入）
    torch::Tensor preprocess(
        torch::Tensor& activation,       // 输入激活张量
        torch::Tensor& lut_scales,       // 可选预计算LUT缩放因子
        torch::Tensor& lut_biases,       // 可选预计算LUT偏置
        torch::Tensor& qlut,             // 可选预计算量化查找表
        int64_t M,
        int64_t K,
        int64_t N
    ) {
        int64_t bits = 2;                // 量化比特数（默认int8）
        bool inplace = false;            // 是否原地修改activation
    
        // 确保输入内存连续
        if (!activation.is_contiguous()) {
            activation = activation.contiguous();
            LOG(WARNING) << "输入张量非连续，已自动转换为连续内存";
        }
    
        // 处理原地操作或创建副本
        torch::Tensor B = inplace ? activation : activation.clone();
        // 获取底层指针（确保张量内存布局正确）
        void* B_ptr = B.data_ptr();
        void* scales_ptr = lut_scales.contiguous().data_ptr();
        void* biases_ptr = lut_biases.contiguous().data_ptr();
        void* qlut_ptr = qlut.contiguous().data_ptr();
    
        // 调用底层预处理函数
        int ret = preprocessor_int8(
            M * bits,   // 压缩后的维度m
            K,          // 原始特征维度k
            N,          // 输出通道维度n
            bits,       // 量化比特数b
            B_ptr,      // 输入/输出数据
            scales_ptr, // LUT缩放因子
            biases_ptr, // LUT偏置
            qlut_ptr    // 量化查找表输出
        );
    
        // 错误处理
        TORCH_CHECK(ret == 0, 
            "预处理失败 (错误码 ", ret, ")\n",
            "参数: M=", M, " K=", K, " N=", N, " bits=", bits);
    
        // 返回所有相关张量
        // return {B, lut_scales, lut_biases, qlut};
        return B;
    }

    torch::Tensor qgemm_lut(
        torch::Tensor& activation,       // 输入激活张量
        torch::Tensor& qlut,             // 可选预计算量化查找表
        torch::Tensor& scales,           // 可选预计算LUT缩放因子
        torch::Tensor& lut_scales,       // 可选预计算LUT缩放因子
        torch::Tensor& lut_biases,       // 可选预计算LUT偏置
        torch::Tensor& C,                // Results
        int64_t M,
        int64_t K,
        int64_t N,
        int64_t bits 
    ) {
        // 确保输入内存连续
        if (!activation.is_contiguous()) {
            activation = activation.contiguous();
            LOG(WARNING) << "输入张量非连续，已自动转换为连续内存";
        }

        // 获取底层指针（确保张量内存布局正确）
        void* A_ptr = activation.data_ptr();
        void* qlut_ptr = qlut.contiguous().data_ptr();
        void* scales_ptr = scales.contiguous().data_ptr();
        void* lut_scales_ptr = lut_scales.contiguous().data_ptr();
        void* lut_biases_ptr = lut_biases.contiguous().data_ptr();
        void* C_ptr = C.contiguous().data_ptr();
    
        // 创建输出张量
        // torch::Tensor C = torch::empty({M, N}, activation.options());
    
        // 调用底层GEMM函数
        int ret = qgemm_lut_int8(
            M * bits,       // 压缩后的维度m
            K,              // 原始特征维度k
            N,              // 输出通道维度n
            bits,           // 量化比特数b
            A_ptr,          // 输入数据
            qlut_ptr,       // 量化查找表
            scales_ptr,     // LUT缩放因子
            lut_scales_ptr, // LUT缩放因子
            lut_biases_ptr, // LUT偏置
            C_ptr           // 输出数据
        );
    
        // 错误处理
        TORCH_CHECK(ret == 0, 
            "GEMM计算失败 (错误码 ", ret, ")\n",
            "参数: M=", M, " K=", K, " N=", N, " bits=", bits);
    
        return C;
    }

}



