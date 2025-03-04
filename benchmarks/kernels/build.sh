#!/bin/bash -eu

# 进入脚本所在目录
cd "$(dirname "$BASH_SOURCE")"

# 设置Torch库路径（根据你的实际安装路径）
export CMAKE_PREFIX_PATH=$(python -c 'from distutils.sysconfig import get_python_lib; print(get_python_lib())')
export CMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}:/Users/tianzijie/libs/torch_v26/pytorch/torch

# 创建构建目录
BUILD_DIR="${PWD}/build"
mkdir -p ${BUILD_DIR}

# 生成构建系统
cmake -DCMAKE_PREFIX_PATH="${CMAKE_PREFIX_PATH}" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_CXX_COMPILER=/usr/bin/clang++ \
    -DCMAKE_C_COMPILER=/usr/bin/clang \
    -S . \
    -B ${BUILD_DIR}

# 执行编译（使用16个并行任务）
cmake --build ${BUILD_DIR} -j 16

# 可选：安装到指定目录（如果需要）
# cmake --build ${BUILD_DIR} --target install