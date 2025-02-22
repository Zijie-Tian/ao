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

#ifdef USE_CUDA_TMAC
#include <cuda_runtime.h>
#endif // USE_CUDA_TMAC

#include <sstream>
#include <optional>
#include <vector>

#include "t-mac/kernels.h"

namespace {

    // 辅助函数：递归打印 Tensor 的数据
    void print_tensor_data(const torch::Tensor& tensor, int64_t offset, int64_t& count, int64_t max_count) {
        if (count >= max_count) {
            return; // 达到最大打印数量，直接返回
        }

        if (tensor.dim() == 1) {
            // 一维 Tensor，直接打印数据
            auto accessor = tensor.accessor<float, 1>(); // 假设是 float 类型
            for (int64_t i = 0; i < tensor.size(0); ++i) {
                if (count >= max_count) break;
                LOG(INFO) << accessor[i] << " ";
                ++count;
            }
        } else {
            // 多维 Tensor，递归打印
            for (int64_t i = 0; i < tensor.size(0); ++i) {
                print_tensor_data(tensor[i], offset, count, max_count);
            }
        }
    }


    void print_tensor(const torch::Tensor& tensor, int64_t max_count = 10) {
        // 检查 Tensor 是否有效
        if (!tensor.defined()) {
            LOG(INFO) << "Tensor is not defined!";
            return;
        }

        // 打印 Tensor 的数据
        LOG(INFO) << "Tensor data (first " << max_count << " elements):";

        // 根据数据类型选择不同的打印方式
        int64_t count = 0; // 计数器，记录已打印的数据量
        switch (tensor.scalar_type()) {
            case torch::kUInt8: {
                auto flat_tensor = tensor.reshape(-1); // 展平 Tensor
                auto accessor = flat_tensor.accessor<uint8_t, 1>(); // 1D uint8 Tensor
                for (int64_t i = 0; i < flat_tensor.size(0) && count < max_count; ++i) {
                    LOG(INFO) << static_cast<int>(accessor[i]) << " ";
                    ++count;
                }
                break;
            }
            case torch::kFloat16: {
                auto flat_tensor = tensor.reshape(-1); // 展平 Tensor
                auto accessor = flat_tensor.accessor<at::Half, 1>(); // 1D float16 Tensor
                for (int64_t i = 0; i < flat_tensor.size(0) && count < max_count; ++i) {
                    LOG(INFO) << static_cast<float>(accessor[i]) << " ";
                    ++count;
                }
                break;
            }
            case torch::kFloat32: {
                auto flat_tensor = tensor.reshape(-1); // 展平 Tensor
                auto accessor = flat_tensor.accessor<float, 1>(); // 1D float32 Tensor
                for (int64_t i = 0; i < flat_tensor.size(0) && count < max_count; ++i) {
                    LOG(INFO) << accessor[i] << " ";
                    ++count;
                }
                break;
            }
            default:
                LOG(INFO) << "Unsupported tensor type!";
                break;
        }
        LOG(INFO) << "\n";
    }

#ifdef USE_CUDA_TMAC
    // 打印内存类型信息
    void print_memory_type(void* ptr) {
        cudaPointerAttributes attributes;
        cudaError_t err = cudaPointerGetAttributes(&attributes, ptr);
        
        if (err != cudaSuccess) {
            LOG(INFO) << "CUDA error: " << cudaGetErrorString(err) << std::endl;
            return;
        }

        LOG(INFO) << "Memory type: ";
        switch(attributes.type) {
            case cudaMemoryTypeHost:
                LOG(INFO) << "Pinned Host Memory";
                break;
            case cudaMemoryTypeDevice:
                LOG(INFO) << "Device Memory";
                break;
            case cudaMemoryTypeManaged:
                LOG(INFO) << "Managed Memory";
                break;
            default:
                LOG(INFO) << "Unknown Memory Type";
        }
    }
#endif // USE_CUDA_TMAC

    // 核心预处理函数（支持多输出和灵活输入）
    torch::Tensor preprocess(
        torch::Tensor& activation,       // 输入激活张量
        torch::Tensor& lut_scales,       // 可选预计算LUT缩放因子
        torch::Tensor& lut_biases,       // 可选预计算LUT偏置
        torch::Tensor& qlut,             // 可选预计算量化查找表
        int64_t M,
        int64_t K,
        int64_t N,
        int64_t bits
    ) {
        // int64_t bits = 2;             // 量化比特数（默认int8）
        bool inplace = false;            // 是否原地修改activation
    
        // 确保输入内存连续
        if (!activation.is_contiguous()) {
            activation = activation.contiguous();
            LOG(WARNING) << "输入张量非连续，已自动转换为连续内存";
        }
    
        // 处理原地操作或创建副本ace ? activation : activation.clone();
        // 获取底层指针（确保张量内存布局正确）
        void* activation_ptr = activation.data_ptr();
        void* scales_ptr = lut_scales.contiguous().data_ptr();
        void* biases_ptr = lut_biases.contiguous().data_ptr();
        void* qlut_ptr = qlut.contiguous().data_ptr();

#ifdef USE_CUDA_TMAC
        print_memory_type(activation_ptr);
        print_memory_type(scales_ptr);
        print_memory_type(biases_ptr);
        print_memory_type(qlut_ptr);
#endif // USE_CUDA_TMAC
   
        // 调底层预处理函数
        int ret = preprocessor_int8(
            M * bits,   // 压缩后的维度m
            K,          // 原始特征维度k
            N,
            bits,       // 量化比特数b
            activation_ptr,      // Activation.
            scales_ptr, // 量化查找表缩放因子
            biases_ptr, // 量化查找表偏置
            qlut_ptr    // 量化查找表输出
        );

        // 错误处理
        TORCH_CHECK(ret == 0, 
            "预处理失败 (错误码 ", ret, ")\n",
            "参数: M=", M, " K=", K, " N=", N, " bits=", bits);
    
        // 返回所有相关张量
        return activation;
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

#ifdef USE_CUDA_TMAC
        print_memory_type(A_ptr);
        print_memory_type(qlut_ptr);
        print_memory_type(scales_ptr);
        print_memory_type(lut_scales_ptr);
        print_memory_type(lut_biases_ptr);
        print_memory_type(C_ptr);
#endif
    
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



