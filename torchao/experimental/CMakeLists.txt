# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

cmake_minimum_required(VERSION 3.19)
include(CMakeDependentOption)

project(torchao)

set(CMAKE_CXX_STANDARD 17)

if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

option(TORCHAO_BUILD_EXECUTORCH_OPS "Building torchao ops for ExecuTorch." OFF)


if(NOT TORCHAO_INCLUDE_DIRS)
  set(TORCHAO_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}/../..)
endif()

option(TORCHAO_BUILD_KLEIDIAI "Download, build, and link against Arm KleidiAI library (arm64 only)" OFF)
option(TORCHAO_BUILD_MPS_OPS "Building torchao MPS ops" OFF)
if(TORCHAO_BUILD_KLEIDIAI)
    message(STATUS "Building with Arm KleidiAI library")
    add_compile_definitions(TORCHAO_ENABLE_KLEIDI=1)
endif()
include(CMakePrintHelpers)

# add_compile_options("-Wall" "-Werror" "-Wno-deprecated")

include(CMakePrintHelpers)
message("TORCHAO_INCLUDE_DIRS: ${TORCHAO_INCLUDE_DIRS}")
include_directories(${TORCHAO_INCLUDE_DIRS})

#> Add Python lib.
find_package(Python REQUIRED COMPONENTS Development)
include_directories(${Python_INCLUDE_DIRS})

find_package(Torch REQUIRED)
include_directories(${TORCH_INCLUDE_DIRS})

message("Python_INCLUDE_DIRS: ${Python_INCLUDE_DIRS}")

if(CMAKE_SYSTEM_PROCESSOR STREQUAL "arm64")
    if(TORCHAO_BUILD_KLEIDIAI)
        message(STATUS "Building with Arm KleidiAI library")
        add_compile_definitions(TORCHAO_ENABLE_KLEIDI=1)
    endif()
    # Defines target torchao_kernels_aarch64
    add_subdirectory(kernels/cpu/aarch64)
    add_subdirectory(ops/linear_8bit_act_xbit_weight)
    add_subdirectory(ops/embedding_xbit)
    add_subdirectory(ops/tmac)
    add_subdirectory(ops/hermes)

    add_library(torchao_ops_aten SHARED)
    set_target_properties(torchao_ops_aten PROPERTIES SUFFIX ".so")
    target_link_libraries(
        torchao_ops_aten PRIVATE
        torchao_ops_linear_8bit_act_xbit_weight_aten
        torchao_ops_embedding_xbit_aten
        torchao_ops_hermes_gemv
        torchao_ops_tmac_aten
    )
    if (TORCHAO_BUILD_MPS_OPS)
        message(STATUS "Building with MPS support")
        add_subdirectory(ops/mps)
        target_link_libraries(torchao_ops_aten PRIVATE torchao_ops_mps_aten)
    endif()

    install(
        TARGETS torchao_ops_aten
        EXPORT _targets
        DESTINATION lib
    )

elseif(CMAKE_SYSTEM_PROCESSOR STREQUAL "aarch64")
    add_subdirectory(ops/tmac)

    add_library(torchao_ops_aten SHARED)
    target_link_libraries(
        torchao_ops_aten PRIVATE
        torchao_ops_tmac_aten
    )
    install(
        TARGETS torchao_ops_aten
        EXPORT _targets
        DESTINATION lib
    )

    # Add managed_allocator.so for aarch64
    add_library(managed_allocator SHARED)
    set_target_properties(managed_allocator PROPERTIES SUFFIX ".so")
    target_sources(managed_allocator PRIVATE allocator/managed_allocator.cpp)
    target_link_libraries(managed_allocator PRIVATE ${TORCH_LIBRARIES})
    install(
        TARGETS managed_allocator
        EXPORT _targets
        DESTINATION lib
    )
else()
    message(FATAL_ERROR "Torchao experimental ops can only be built on arm64 CPUs.")
endif()
