cmake_minimum_required(VERSION 3.20)

# Set the project name
project(bench_kernels)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
add_subdirectory(../../third_party/benchmark)

# Add the executable
add_executable(MyBenchmark BM_SomeFunction.cpp)

# Link the Google Benchmark library
target_link_libraries(MyBenchmark benchmark::benchmark)