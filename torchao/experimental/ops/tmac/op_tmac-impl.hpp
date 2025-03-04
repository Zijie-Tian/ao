// Copyright (c) Meta Platforms, Inc. and affiliates.
// All rights reserved.
//
// This source code is licensed under the license found in the
// LICENSE file in the root directory of this source tree.

#pragma once

//> Include header of Torch.
#include <torch/torch.h> 
#include <torchao/experimental/ops/library.h>
#include <torch/extension.h>
#include <c10/util/Logging.h>
#include <c10/util/Half.h>

#ifdef USE_CUDA_TMAC
#include <cuda_runtime.h>
#endif // USE_CUDA_TMAC

#include <sstream>
#include <optional>
#include <vector>

#include "t-mac/kernels.h"

namespace {

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

    std::vector<torch::Tensor> preprocess(
        torch::Tensor& activation,
        int64_t M,
        int64_t K,
        int64_t N,
        int64_t act_group_size,
        int64_t g,
        int64_t bits
    ) {
        bool inplace = false;
    
        if (!activation.is_contiguous()) {
            activation = activation.contiguous();
            LOG(WARNING) << "Not contiguous memory, converted to contiguous memory";
        }
    
        void* activation_ptr = activation.data_ptr();

        torch::Tensor LUT_Scales = torch::zeros({N, K / act_group_size}, torch::kFloat16);
        torch::Tensor LUT_Biases = torch::zeros({N, K / act_group_size}, torch::kFloat16);
        torch::Tensor QLUT = torch::zeros({K, 32}, torch::kInt8);

        void* lut_scales_ptr = LUT_Scales.contiguous().data_ptr();
        void* lut_biases_ptr = LUT_Biases.contiguous().data_ptr();
        void* qlut_ptr = QLUT.contiguous().data_ptr();

        int ret = preprocessor_int8(
            M * bits,
            K,
            N,
            bits,
            activation_ptr, 
            lut_scales_ptr, 
            lut_biases_ptr, 
            qlut_ptr 
        );

        TORCH_CHECK(ret == 0, 
            "Preprocessing failed (error code ", ret, ")\n",
            "Parameters: M=", M, " K=", K, " N=", N, " bits=", bits);
    
        return {LUT_Scales, LUT_Biases, QLUT};
    }

    //! =====================================================================

    torch::Tensor qgemm_lut(
        torch::Tensor& packed_qweight,  
        torch::Tensor& qlut, 
        torch::Tensor& scales, 
        torch::Tensor& lut_scales,
        torch::Tensor& lut_biases, 
        int64_t M,
        int64_t K,
        int64_t N,
        int64_t bm,
        int64_t g,
        int64_t bits 
    ) {
        // 确保输入内存连续
        if (!packed_qweight.is_contiguous()) {
            packed_qweight = packed_qweight.contiguous();
            LOG(WARNING) << "Not contiguous memory, converted to contiguous memory";
        }

        TORCH_CHECK(packed_qweight.dtype() == torch::kUInt8, "packed_qweight must be of type uint8");
        TORCH_CHECK(qlut.dtype() == torch::kInt8, "qlut must be of type int8");
        TORCH_CHECK(scales.dtype() == torch::kFloat16, "scales must be of type float16");
        TORCH_CHECK(lut_scales.dtype() == torch::kFloat16, "lut_scales must be of type float16");
        TORCH_CHECK(lut_biases.dtype() == torch::kFloat16, "lut_biases must be of type float16");

        uint8_t* A_ptr_uint8 = packed_qweight.data_ptr<uint8_t>();

        void* qlut_ptr = qlut.contiguous().data_ptr();
        void* scales_ptr = scales.contiguous().data_ptr();
        void* lut_scales_ptr = lut_scales.contiguous().data_ptr();
        void* lut_biases_ptr = lut_biases.contiguous().data_ptr();

        // Allocate C Tensor.
        torch::Tensor C = torch::zeros({N, M}, torch::kFloat16);
        torch::Half* C_ptr_f16 = static_cast<torch::Half*>(C.contiguous().data_ptr());

        int64_t ngroups_per_elem = 8 / g;

        for(int m_tile_idx = 0; m_tile_idx < M / (bm / ngroups_per_elem); m_tile_idx++) {
            int ret = qgemm_lut_int8(
                bm,
                K,
                N,
                bits,
                (void *)(A_ptr_uint8 + (K / g) * m_tile_idx * bm / ngroups_per_elem), 
                qlut_ptr,
                scales_ptr,
                lut_scales_ptr,
                lut_biases_ptr, 
                (void *)(C_ptr_f16 + m_tile_idx * bm / ngroups_per_elem)
            );
    
            TORCH_CHECK(ret == 0, 
                "LUT_GEMM failed (error code ", ret, ")\n",
                "Parameters: M=", M, " K=", K, " N=", N, " bits=", bits);
            
        }

        return C;
    }

}



