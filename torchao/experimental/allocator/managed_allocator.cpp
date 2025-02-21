#include <sys/types.h>
#include <cuda_runtime_api.h>
#include <iostream>
#include <c10/util/Logging.h>

// 错误检查宏
#define CUDA_CHECK(call) \
    do { \
        cudaError_t err = (call); \
        if (err != cudaSuccess) { \
            std::cout << "CUDA error in " << #call << ": " << cudaGetErrorString(err); \
            throw std::runtime_error("CUDA error"); \
        } \
    } while (0)

extern "C" {
    // 分配内存
    void* my_malloc(ssize_t size, int device, cudaStream_t stream) {
        void* ptr = nullptr;

        // 设置当前设备
        CUDA_CHECK(cudaSetDevice(device));

        // 分配 Unified Memory
        CUDA_CHECK(cudaMallocManaged(&ptr, size));

        // 记录日志
        // std::cout << "Allocated " << size << " bytes at " << ptr << " on device " << device;

        return ptr;
    }

    // 释放内存
    void my_free(void* ptr, ssize_t size, int device, cudaStream_t stream) {
        if (ptr == nullptr) {
            // std::cout << "Attempted to free a null pointer";
            return;
        }

        // 设置当前设备
        CUDA_CHECK(cudaSetDevice(device));

        // 释放内存
        CUDA_CHECK(cudaFree(ptr));

        // 记录日志
        // std::cout << "Freed " << size << " bytes at " << ptr << " on device " << device;
    }
}
