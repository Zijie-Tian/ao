# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

cmake_minimum_required(VERSION 3.19)

include(${CMAKE_CURRENT_SOURCE_DIR}/../../Utils.cmake)
include(CheckCXXCompilerFlag)

set(CMAKE_C_COMPILER "clang")
set(CMAKE_CXX_COMPILER "clang++")

set(ARCH_FLAGS "")

if (CMAKE_OSX_ARCHITECTURES      STREQUAL "arm64" OR
    CMAKE_GENERATOR_PLATFORM_LWR STREQUAL "arm64" OR
    (NOT CMAKE_OSX_ARCHITECTURES      AND
     NOT CMAKE_GENERATOR_PLATFORM_LWR AND
         CMAKE_SYSTEM_PROCESSOR MATCHES "^(aarch64|arm.*|ARM64)$"))

    message(STATUS "ARM detected")
    message(STATUS "System processor: ${CMAKE_SYSTEM_PROCESSOR}")

    CHECK_CXX_COMPILER_FLAG(-mfp16-format=ieee COMPILER_SUPPORTS_FP16_FORMAT_I3E)
    if (NOT "${COMPILER_SUPPORTS_FP16_FORMAT_I3E}" STREQUAL "")
        list(APPEND ARCH_FLAGS -mfp16-format=ieee)
    endif()
    if (${CMAKE_SYSTEM_PROCESSOR} MATCHES "armv6")
        # Raspberry Pi 1, Zero
        list(APPEND ARCH_FLAGS -mfpu=neon-fp-armv8 -mno-unaligned-access)
    endif()
    if (${CMAKE_SYSTEM_PROCESSOR} MATCHES "armv7")
        if ("${CMAKE_SYSTEM_NAME}" STREQUAL "Android")
            # Android armeabi-v7a
            list(APPEND ARCH_FLAGS -mfpu=neon-vfpv4 -mno-unaligned-access -funsafe-math-optimizations)
        else()
            # Raspberry Pi 2
            list(APPEND ARCH_FLAGS -mfpu=neon-fp-armv8 -mno-unaligned-access -funsafe-math-optimizations)
        endif()
    endif()
    if (${CMAKE_SYSTEM_PROCESSOR} MATCHES "armv8")
        # Android arm64-v8a
        # Raspberry Pi 3, 4, Zero 2 (32-bit)
        list(APPEND ARCH_FLAGS -mno-unaligned-access)
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
    if (${CMAKE_SYSTEM_PROCESSOR} MATCHES "ARM64" AND GGML_TMAC AND TMAC_FOUND)
        # ARM Windows with LLVM clang GNU interface
        # We need fullfp16 for T-MAC
        # TODO: check_cxx_source_compiles
            list(APPEND ARCH_FLAGS -march=armv8.2a+fp16)
        endif()
        if (GGML_SVE)
            list(APPEND ARCH_FLAGS -march=armv8.6-a+sve)
        endif()

    message(STATUS "Final arch flags: ${ARCH_FLAGS}")

    add_compile_options("$<$<COMPILE_LANGUAGE:CXX>:${ARCH_FLAGS}>")
    add_compile_options("$<$<COMPILE_LANGUAGE:C>:${ARCH_FLAGS}>")
endif()

find_package(Torch REQUIRED)
add_library(torchao_ops_tmac_aten OBJECT
    op_tmac_aten.cpp
    tuned/kernels.cc
)
set_target_properties(torchao_ops_tmac_aten PROPERTIES POSITION_INDEPENDENT_CODE ON)
target_link_torchao_parallel_backend(torchao_ops_tmac_aten openmp)
# target_link_libraries(torchao_ops_tmac_aten PRIVATE torchao_kernels_aarch64)
target_include_directories(torchao_ops_tmac_aten PRIVATE "${TORCH_INCLUDE_DIRS}")
target_include_directories(torchao_ops_tmac_aten PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}")
target_link_libraries(torchao_ops_tmac_aten PRIVATE "${TORCH_LIBRARIES}")

# if(TORCHAO_BUILD_EXECUTORCH_OPS)
#     file(GLOB _SRCS "${CMAKE_CURRENT_SOURCE_DIR}/op_tmac_executorch/*.cpp")
#     add_library(torchao_ops_tmac_executorch OBJECT
#         tmac.cpp
#         ${_SRCS}
#     )
#     target_link_torchao_parallel_backend(torchao_ops_tmac_executorch executorch)
#     target_include_directories(torchao_ops_tmac_executorch PRIVATE "${EXECUTORCH_INCLUDE_DIRS}")
#     target_compile_definitions(torchao_ops_tmac_executorch PRIVATE USE_EXECUTORCH=1)
#     target_link_libraries(torchao_ops_tmac_executorch PRIVATE "${EXECUTORCH_LIBRARIES}")
#     target_link_libraries(torchao_ops_tmac_executorch PRIVATE torchao_kernels_aarch64)
# endif()
