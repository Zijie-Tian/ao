# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

cmake_minimum_required(VERSION 3.19)

project(torchao_ops_hermes_gemv)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED YES)

if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

# Check if building on macOS
if (CMAKE_SYSTEM_NAME STREQUAL "Darwin")
    if (NOT CMAKE_SYSTEM_PROCESSOR STREQUAL "arm64")
        message(FATAL_ERROR "Unified Memory requires Apple Silicon architecture")
    endif()
else()
    message(FATAL_ERROR "Torchao experimental MPS ops can only be built on macOS/iOS")
endif()

# Find PyTorch library
find_package(Torch REQUIRED)

# Set source files for custom extension
set(SOURCE_FILES op_hermes_aten.cpp)

# Add custom extension library
add_library(torchao_ops_hermes_gemv SHARED ${SOURCE_FILES})

# Torch Library
target_include_directories(torchao_ops_hermes_gemv PRIVATE "${TORCH_INCLUDE_DIRS}")
target_link_libraries(torchao_ops_hermes_gemv PRIVATE "${TORCH_LIBRARIES}")

# Enable Metal support (if needed)
find_library(METAL_LIB Metal)
find_library(FOUNDATION_LIB Foundation)
target_link_libraries(torchao_ops_hermes_gemv PRIVATE ${METAL_LIB} ${FOUNDATION_LIB})
