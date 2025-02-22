#!/bin/bash -eu
# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

#> Generate the TMAC operator with TVM.
tmac_dir=t-mac

rm -rf $tmac_dir
mkdir -p $tmac_dir

# 获取系统架构
arch=$(uname -m)

if [ "$arch" == "aarch64" ]; then
    echo "Detected architecture: aarch64 (Jetson)"
    python compile.py -o $tmac_dir -da -nt 4 -d jetson -gc -ags 64 -gs 128 --tune -m benchmark
elif [ "$arch" == "arm64" ]; then
    echo "Detected architecture: arm64 (M2 Mac)"
    python compile.py -o $tmac_dir -da -nt 4 -d m2 -gc -ags 64 -gs 128 --tune -m benchmark 
else
    echo "Unsupported architecture: $arch"
    exit 1
fi
