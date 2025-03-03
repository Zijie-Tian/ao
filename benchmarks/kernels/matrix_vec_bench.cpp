#include <torch/torch.h>
#include <benchmark/benchmark.h>

static void BM_MatrixVectorMultiplication(benchmark::State& state) {
    // Create random matrix and vector
    auto A = torch::randn({1024, 1024});
    auto x = torch::randn({1024});

    // Warmup
    for (int i = 0; i < 10; ++i) {
        torch::mv(A, x);
    }

    // Timing
    for (auto _ : state) {
        torch::mv(A, x);
    }
}

// Register the function as a benchmark
BENCHMARK(BM_MatrixVectorMultiplication);

// Run the benchmark
BENCHMARK_MAIN();
