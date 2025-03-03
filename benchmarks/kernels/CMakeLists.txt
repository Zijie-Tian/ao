cmake_minimum_required(VERSION 3.20)

# Set the project name
project(bench_kernels)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)

# Add parameters before add_subdirectory
set(BENCHMARK_ENABLE_TESTING OFF CACHE BOOL "Disable tests")
set(BENCHMARK_DOWNLOAD_DEPENDENCIES ON CACHE BOOL "Auto-download deps")
add_subdirectory(third_party/benchmark)

# Add the executable
find_package(Torch REQUIRED)

# Update the executable name (original MyBenchmark no longer exists)
add_executable(matrix_vec_bench matrix_vec_bench.cpp)

# Link the benchmark library
target_link_libraries(matrix_vec_bench PRIVATE benchmark::benchmark ${TORCH_LIBRARIES})

# Add Torch include directories
target_include_directories(matrix_vec_bench PRIVATE ${TORCH_INCLUDE_DIRS})
