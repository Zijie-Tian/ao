#!/bin/bash -eu
# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

#> Generate the TMAC operator with TVM.

set +x

tmac_dir=t-mac

rm -rf $tmac_dir
mkdir -p $tmac_dir
python compile.py -o $tmac_dir -da -nt 1 -d m2 -gc -ags 64 -gs 128 --tune -m benchmark
# python compile.py -o $tmac_dir -da -nt 4 -d m2 -gc -ags 64 -gs 128 --tune  -zp -m hf-bitnet-3b

set -x
