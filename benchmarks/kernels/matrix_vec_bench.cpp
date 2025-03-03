#include <iostream>
#include <fstream>
#include <sstream>
#include <unordered_map>

#include <benchmark/benchmark.h>
#include <torch/torch.h>
#include "t-mac/kernels.h"

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
    // Ensure input memory is contiguous
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

// Function to read INI file and return a map of key-value pairs
std::unordered_map<std::string, std::string> readIniFile(const std::string& filename) {
    std::unordered_map<std::string, std::string> config;
    std::ifstream file(filename);
    if (file.is_open()) {
        std::string line;
        while (std::getline(file, line)) {
            std::istringstream iss(line);
            std::string key, value;
            if (std::getline(iss, key, '=') && std::getline(iss, value)) {
                config[key] = value;
            }
        }
        file.close();
    }
    return config;
}

// 添加配置参数获取辅助函数
static int getConfigValue(
    const std::unordered_map<std::string, std::string>& config,
    const std::string& key,
    const std::vector<std::string>& valid_keys = {}
) {
    auto it = config.find(key);
    if (it == config.end()) {
        std::string msg = "Missing key '" + key + "' in config file. Valid keys: ";
        for (const auto& k : valid_keys) msg += k + ", ";
        throw std::runtime_error(msg);
    }
    try {
        return std::stoi(it->second);
    } catch (const std::exception& e) {
        throw std::runtime_error("Invalid value for key '" + key + "': " + it->second);
    }
}

// 同时需要修改基准测试函数的参数类型
static void BM_PACK(benchmark::State& state) {
    int64_t M = state.range(0);  // 修改为int64_t
    int64_t K = state.range(1);
    int64_t N = state.range(2);
    int64_t bits = state.range(3);

    auto config = readIniFile("/Users/tianzijie/Baselines/ao/torchao/experimental/ops/tmac/t-mac/kcfg.ini");
    std::vector<std::string> valid_keys{"bm"};
    int act_group_size = 64; 
    int g = 4;

    auto activation = torch::randn({M, K}, torch::kFloat32);
    std::vector<torch::Tensor> preprocessed;

    for (auto _ : state) {
        preprocessed = preprocess(activation, M, K, N, act_group_size, g, bits);
    }
}

static void BM_QGEMM_LUT(benchmark::State& state) {
    int64_t M = state.range(0);  // 修改为int64_t
    int64_t K = state.range(1);
    int64_t N = state.range(2);
    int64_t bits = state.range(3);
    int64_t bm = state.range(4);

    // auto config = readIniFile("/Users/tianzijie/Baselines/ao/torchao/experimental/ops/tmac/t-mac/kcfg.ini");
    // std::vector<std::string> valid_keys{"bm"};
    // int64_t bm = static_cast<int64_t>(getConfigValue(config, "bm", valid_keys));
    int64_t g = 4;

    // 修改UInt8张量的生成方式
    auto packed_qweight = torch::randint(0, 255, {M, K/8}, torch::kUInt8);  // 替换原来的randn
    
    auto activation = torch::randn({N, K}, torch::kFloat32);
    auto preprocessed = preprocess(activation, M, K, N, 1, g, bits);
    auto qlut = preprocessed[2];
    auto scales = torch::randn({K}, torch::kFloat16);
    auto lut_scales = preprocessed[0];
    auto lut_biases = preprocessed[1];

    torch::Tensor result;
    for (auto _ : state) {
        result = qgemm_lut(packed_qweight, qlut, scales, lut_scales, lut_biases, M, K, N, bm, g, bits);
    }
}
std::vector<std::vector<int64_t>> argCombinations = {
    {4096, 4096, 1, 2, 512},  // M=8192, K=4096, N=4096, bits=2
    {3200, 8640, 1, 2, 128},  // M=6400, K=8640, N=8640, bits=2
    {8640, 3200, 1, 2, 640}, // M=17280, K=3200, N=3200, bits=2 
    {3200, 3200, 1, 2, 256}   // M=6400, K=3200, N=3200, bits=2
};

// 为每个参数组单独注册基准测试（添加时间单位设置）
BENCHMARK(BM_PACK)->Args(argCombinations[0])->Unit(benchmark::kMillisecond);
BENCHMARK(BM_QGEMM_LUT)->Args(argCombinations[0])->Unit(benchmark::kMillisecond);

BENCHMARK(BM_PACK)->Args(argCombinations[1])->Unit(benchmark::kMillisecond);
BENCHMARK(BM_QGEMM_LUT)->Args(argCombinations[1])->Unit(benchmark::kMillisecond);

BENCHMARK(BM_PACK)->Args(argCombinations[2])->Unit(benchmark::kMillisecond);
BENCHMARK(BM_QGEMM_LUT)->Args(argCombinations[2])->Unit(benchmark::kMillisecond);

BENCHMARK(BM_PACK)->Args(argCombinations[3])->Unit(benchmark::kMillisecond);
BENCHMARK(BM_QGEMM_LUT)->Args(argCombinations[3])->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();
