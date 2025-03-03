cmake_minimum_required(VERSION 3.20)

# Set the project name
project(bench_kernels)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)

# 注释掉硬编码的编译器路径设置
# set(CMAKE_C_COMPILER "/usr/bin/clang")
# set(CMAKE_CXX_COMPILER "/usr/bin/clang++")

# 在ARCH_FLAGS设置前添加以下模块引入
include(CheckCXXCompilerFlag)
include(CheckCXXSourceCompiles)

set(ARCH_FLAGS "")

if (CMAKE_OSX_ARCHITECTURES      STREQUAL "arm64" OR
    CMAKE_GENERATOR_PLATFORM_LWR STREQUAL "arm64" OR
    (NOT CMAKE_OSX_ARCHITECTURES      AND
     NOT CMAKE_GENERATOR_PLATFORM_LWR AND
         CMAKE_SYSTEM_PROCESSOR MATCHES "^(aarch64|arm.*|ARM64)$"))

    message(STATUS "ARM detected")
    message(STATUS "System processor: ${CMAKE_SYSTEM_PROCESSOR}")
    message(STATUS "System name: ${CMAKE_SYSTEM_NAME}")

    CHECK_CXX_COMPILER_FLAG(-mfp16-format=ieee COMPILER_SUPPORTS_FP16_FORMAT_I3E)
    if (NOT "${COMPILER_SUPPORTS_FP16_FORMAT_I3E}" STREQUAL "")
        list(APPEND ARCH_FLAGS -mfp16-format=ieee)
    endif()
    if (${CMAKE_SYSTEM_PROCESSOR} MATCHES "aarch64")
        # We need fullfp16 for T-MAC
        # TODO: we need to simplify this logic through check_cxx_source_compiles or Presets?
        CHECK_CXX_SOURCE_COMPILES("#include <arm_neon.h>\nint main() { int8x16_t _a, _b; int32x4_t _s = vmlaq_f32(_s, _a, _b); return 0; }" GGML_COMPILER_SUPPORT_MATMUL_INT8)
        if (GGML_COMPILER_SUPPORT_MATMUL_INT8)
            # Device with armv8.7a+ cpu, e.g., WSL on Surface Laptop 7
            # based on arm64-windows-llvm.cmake
            list(APPEND ARCH_FLAGS -march=armv8.7-a+fp16 -fvectorize -ffp-model=fast -fno-finite-math-only)
            add_compile_definitions(__ARM_FEATURE_MATMUL_INT8)
        else ()
            # Jetson AGX Orin, Raspberry Pi 5
            message("Add arm + FP16 support.")
            list(APPEND ARCH_FLAGS -march=armv8.2a+fp16)
        endif ()
    endif()
    #> Zijie : Add Apple M4 Max support
    if (${CMAKE_SYSTEM_PROCESSOR} MATCHES "arm64" AND "${CMAKE_SYSTEM_NAME}" STREQUAL "Darwin")
        # Apple M2
        list(APPEND ARCH_FLAGS -mcpu=apple-m2)
    endif()

    message(STATUS "Final arch flags: ${ARCH_FLAGS}")

    add_compile_options("$<$<COMPILE_LANGUAGE:CXX>:${ARCH_FLAGS}>")
    add_compile_options("$<$<COMPILE_LANGUAGE:C>:${ARCH_FLAGS}>")
endif()

find_package(Torch REQUIRED)

# Add parameters before add_subdirectory
set(BENCHMARK_ENABLE_TESTING OFF CACHE BOOL "Disable tests")
set(BENCHMARK_DOWNLOAD_DEPENDENCIES ON CACHE BOOL "Auto-download deps")
add_subdirectory(third_party/benchmark)

# Add the executable
find_package(Torch REQUIRED)
add_compile_options("$<$<COMPILE_LANGUAGE:CXX>:${ARCH_FLAGS}>")

# Update the executable name (original MyBenchmark no longer exists)
# 更新可执行文件配置
add_executable(matrix_vec_bench 
    matrix_vec_bench.cpp
    ../../torchao/experimental/ops/tmac/t-mac/kernels.cc  # 添加TMAC内核实现
)

# 添加内核头文件路径
target_include_directories(matrix_vec_bench PRIVATE
    "${TORCH_INCLUDE_DIRS}"
    "${PROJECT_SOURCE_DIR}/../../torchao/experimental/ops/tmac"  # 新增内核头文件路径
    "${PROJECT_SOURCE_DIR}/../../torchao/experimental/ops/tmac/t-mac"
)

# Add Torch include directories
target_include_directories(matrix_vec_bench PRIVATE
    "${TORCH_INCLUDE_DIRS}"
    "${PROJECT_SOURCE_DIR}/../../"
)

# 添加TorchAO库链接
target_link_libraries(matrix_vec_bench PRIVATE 
    torch
    benchmark::benchmark
    ${TORCH_LIBRARIES}
    "/Users/tianzijie/Baselines/ao/torchao/experimental/cmake-out/libtorchao_ops_aten.so"
)

