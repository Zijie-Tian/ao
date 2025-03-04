#include <benchmark/benchmark.h>
#include <torch/torch.h>
// 添加Objective-C++头文件
#if defined(__APPLE__)
#include <Metal/Metal.h>
#include <Foundation/Foundation.h>
#endif
// 添加类型定义头文件
#include "torchao/experimental/kernels/mps/src/lowbit.h"
#include "torchao/experimental/kernels/mps/src/OperationUtils.h"
#include "bfloat16.h"
// 添加缺失的头文件
#include <random>  // 包含随机数库头文件
// #include "torchao/experimental/kernels/mps/test/test_lowbit.mm"  // 包含allocSharedBuffer实现

using Float16 = _Float16;
using namespace torchao::kernels::mps::lowbit;

template <typename T>
const std::string_view type_string();
template <>
const std::string_view type_string<BFloat16>() {
  return "bfloat";
}
template <>
const std::string_view type_string<float>() {
  return "float";
}
template <>
const std::string_view type_string<Float16>() {
  return "half";
}

inline id<MTLBuffer> allocSharedBuffer(id<MTLDevice> device, unsigned length) {
  id<MTLBuffer> rc = [device newBufferWithLength:length
                                         options:MTLResourceStorageModeShared];
  if (rc == nil) {
    throw std::runtime_error(
        "Can't allocate " + std::to_string(length) + " bytes on GPU");
  }
  return rc;
}

// Reference CPU implementation of lowbit quantized linear
template <typename T>
void reference_linear_lowbit_quant_weights_cpu(
    const T* a_ptr,
    const uint8_t* w_ptr,
    int64_t group_size,
    const T* s_ptr,
    const T* z_ptr,
    T* out_ptr,
    int32_t M,
    int32_t K,
    int32_t N) {
  for (int32_t m = 0; m < M; m++) {
    for (int32_t n = 0; n < N; n++) {
      const int32_t k_block = (K + group_size - 1) / group_size;
      const T* A_ptr = a_ptr + m * K;

      float rc = 0.0;
      int32_t k = 0;
      for (int32_t kb = 0; kb < k_block; kb++) {
        const float scale = float(s_ptr[kb * N + n]);
        const float zero = float(z_ptr[kb * N + n]);
        for (int32_t idx = 0; idx < group_size && k < K; idx++, k++) {
          const auto a_val = float(A_ptr[k]);
          uint8_t w_val = w_ptr[n * K + k];
          rc += a_val * (scale * float(w_val) + zero);
        }
      }

      out_ptr[m * N + n] = T(rc);
    }
  }
}

template <typename T, int nbit>
class LowBitTester {
 public:
  LowBitTester(int32_t m, int32_t k, int32_t n, int32_t group_size)
      : M(m), K(k), N(n), qGroupSize(group_size) {}

  void init() {
    allocBuffers(getMetalDevice());

    T* a_ptr = reinterpret_cast<T*>([buf_A contents]);
    uint8_t* w_ptr = reinterpret_cast<uint8_t*>([buf_W contents]);
    T* c_ptr = reinterpret_cast<T*>([buf_C contents]);
    T* s_ptr = reinterpret_cast<T*>([buf_S contents]);
    T* z_ptr = reinterpret_cast<T*>([buf_Z contents]);
    std::random_device rd;
    std::mt19937 generator(rd());
    std::uniform_int_distribution<> int_distrib(0, (1 << nbit) - 1);
    std::uniform_real_distribution<> real_distrib(-1.0, 1.0);

    for (int idx = 0; idx < M * K; ++idx) {
      a_ptr[idx] = real_distrib(generator);
    }
    for (int idx = 0; idx < N * K; ++idx) {
      w_ptr[idx] = int_distrib(generator);
    }
    int32_t ceil_K_group_size = (K + qGroupSize - 1) / qGroupSize;
    for (int idx = 0; idx < N * ceil_K_group_size; ++idx) {
      s_ptr[idx] = (idx + 1.0) / N;
      auto zp = int_distrib(generator);
      z_ptr[idx] = -zp * s_ptr[idx];
    }
    for (int idx = 0; idx < M * N; ++idx) {
      c_ptr[idx] = -1.0;
    }
  }

  void pack() {
    uint8_t* w_ptr = reinterpret_cast<uint8_t*>([buf_W contents]);
    uint8_t* b_ptr = reinterpret_cast<uint8_t*>([buf_B contents]);
    LowBitQuantWeights<nbit>::pack(w_ptr, b_ptr, N, K);
  }

  void linear() {
    LowBitQuantWeights<nbit>::linear(
        buf_A,
        buf_B,
        qGroupSize,
        buf_S,
        buf_Z,
        buf_C,
        M,
        K,
        N,
        type_string<T>());
  }

  bool validate(float atol_lim = 5e-3, float rtol_lim = 5e-3) const {
    T* a_ptr = reinterpret_cast<T*>([buf_A contents]);
    uint8_t* w_ptr = reinterpret_cast<uint8_t*>([buf_W contents]);
    T* c_ptr = reinterpret_cast<T*>([buf_C contents]);
    T* s_ptr = reinterpret_cast<T*>([buf_S contents]);
    T* z_ptr = reinterpret_cast<T*>([buf_Z contents]);

    char* e_ptr_f = new char[M * N * sizeof(T)]; // expected
    T* e_ptr = reinterpret_cast<T*>(e_ptr_f);
    reference_linear_lowbit_quant_weights_cpu<T>(
        a_ptr, w_ptr, qGroupSize, s_ptr, z_ptr, e_ptr, M, K, N);

    for (int m = 0; m < M; m++) {
      for (int n = 0; n < N; n++) {
        float rc = float(c_ptr[m * N + n]);
        float expected = float(e_ptr[m * N + n]);

        auto atol = std::abs(rc - expected);
        auto rtol =
            atol / std::max(std::min(std::abs(expected), std::abs(rc)), 1e-6f);
        if (rtol > rtol_lim && atol > atol_lim) {
          std::cerr << "Result " << expected << " vs expected " << rc
                    << " (atol=" << atol << " ,rtol=" << rtol << ") at " << m
                    << ":" << n << std::endl;
          return false;
        }
      }
    }
    return true;
  }

 private:
  void allocBuffers(id<MTLDevice> device) {
    int32_t ceil_K_group_size = (K + qGroupSize - 1) / qGroupSize;
    const int32_t elem_size = sizeof(T);
    buf_A = allocSharedBuffer(device, M * K * elem_size);
    buf_W = allocSharedBuffer(device, N * K);
    buf_B = allocSharedBuffer(device, N * nbit * K / 8);
    buf_C = allocSharedBuffer(device, M * N * elem_size);
    buf_S = allocSharedBuffer(device, N * ceil_K_group_size * elem_size);
    buf_Z = allocSharedBuffer(device, N * ceil_K_group_size * elem_size);
  }

 public:
  int32_t M, K, N; // Input-output matirx dims
  int32_t qGroupSize;
  id<MTLBuffer> buf_A; // MxK elements
  id<MTLBuffer> buf_W; // NxK elements
  id<MTLBuffer> buf_B; // NxK elements (packed)
  id<MTLBuffer> buf_C; // MxN elements
  id<MTLBuffer> buf_S; // (K/group_size)xN elements
  id<MTLBuffer> buf_Z; // (K/group_size)xN elements
};

// 修改基准测试函数实现
template <typename T, int nbit>
static void BM_MPS_LowBit(benchmark::State& state) {
    const int M = state.range(0);
    const int K = state.range(1);
    const int N = state.range(2);
    const int group_size = state.range(3);

    LowBitTester<T, nbit> tester(M, K, N, group_size);
    tester.init();
    tester.pack();

    for (auto _ : state) {
        @autoreleasepool {  // 确保每个iteration都有独立的自动释放池
            // 在GPU操作外层添加内存屏障
            [tester.commandQueue insertDebugCaptureBoundary]; // 新增调试边界
            tester.linear();
            benchmark::ClobberMemory();
        }
    }
    
    // 添加资源清理
    [tester releaseMetalResources]; // 需要实现资源释放方法
    state.SetBytesProcessed(state.iterations() * M * K * N * sizeof(T));
}

// 注册测试参数：M, K, N, group_size
BENCHMARK_TEMPLATE(BM_MPS_LowBit, float, 4)->Args({128, 1024, 512, 64});
BENCHMARK_TEMPLATE(BM_MPS_LowBit, Float16, 4)->Args({128, 1024, 512, 64});

// 修正BFloat16类型引用
BENCHMARK_TEMPLATE(BM_MPS_LowBit, BFloat16, 4)->Args({128, 1024, 512, 64});
BENCHMARK_TEMPLATE(BM_MPS_LowBit, float, 7)->Args({256, 2048, 1024, 128});
BENCHMARK_TEMPLATE(BM_MPS_LowBit, Float16, 7)->Args({256, 2048, 1024, 128});

// 修正BFloat16的完整命名空间
BENCHMARK_TEMPLATE(BM_MPS_LowBit, BFloat16, 4)->Args({128, 1024, 512, 64});
BENCHMARK_MAIN();