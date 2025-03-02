import torch
import os

current_path = os.path.dirname(os.path.abspath(__file__))
torch.ops.load_library(current_path + "/../cmake-out/libtorchao_ops_aten.so")

import torch
import platform

system_arch = platform.machine()

if system_arch == "aarch64":
    # Load the allocator
    new_alloc = torch.cuda.memory.CUDAPluggableAllocator(
        "/home/edgellm/Code/ao/torchao/experimental/cmake-out/libmanaged_allocator.so", 'my_malloc', 'my_free')
    torch.cuda.memory.change_current_allocator(new_alloc)
    print("CUDA allocator changed successfully on aarch64 platform.")
else:
    print(f"Current platform is {system_arch}, skipping allocator change.")

import copy
import tempfile
import unittest

import sys
sys.path.append(current_path + "/../ops/tmac/")
print(sys.path)
from t_mac.weights import preprocess_weights, preprocess_weights_torch

import numpy as np

import configparser
import re
from dataclasses import dataclass
from typing import List

from torchao.quantization.utils import compute_error

CONFIG_PATH = current_path + "/../ops/tmac/t-mac/kcfg.ini"

@dataclass
class QuantConfig:
    """量化计算配置参数的数据类"""
    # 基础参数
    bits: int = 2
    M: int = 3200
    N: int = 1
    K: int = 3200
    zero_point: bool = False
    dtype: str = "int8"

    # 分组参数
    g: int = 4
    group_size: int = 128
    act_group_size: int = 64
    m_groups: int = -1

    # 新增架构参数
    bm: int = 128     # 块大小（block_m）
    kfactor: int = 16 # K轴缩放因子

    @classmethod
    def from_section(cls, section_name: str, config_parser: configparser.ConfigParser) -> 'QuantConfig':
        """从INI文件section解析出配置对象"""
        # 从section名称提取基础参数
        match = re.match(
            r'^qgemm_lut_t\d+_(\w+)_m(\d+)_k(\d+)_n(\d+)_b(\d+)$',
            section_name
        )
        if not match:
            raise ValueError(f"Invalid section format: {section_name}")

        # 构建基础参数字典
        base_params = {
            'dtype': match.group(1),
            'M': int(match.group(2)),
            'K': int(match.group(3)),
            'N': int(match.group(4)),
            'bits': int(match.group(5))
        }

        base_params['M'] = base_params['M'] // base_params['bits']

        # 合并文件配置参数
        section = config_parser[section_name]
        param_dict = base_params.copy()

        # 处理所有可能覆盖的参数
        int_keys = ['g', 'group_size', 'act_group_size', 'm_groups', 'bm', 'kfactor']
        bool_keys = ['zero_point']

        for key in int_keys:
            if section.get(key) is not None:
                param_dict[key] = section.getint(key)

        for key in bool_keys:
            if section.get(key) is not None:
                param_dict[key] = section.getboolean(key)

        return cls(**param_dict)

def load_op_config_ini(file_path: str) -> List[QuantConfig]:
    """读取INI文件并生成QuantConfig对象列表"""
    config = configparser.ConfigParser()
    config.read(file_path)

    return [
        QuantConfig.from_section(section, config)
        for section in config.sections()
        if re.match(r'^qgemm_lut_t\d+_', section)  # 过滤有效section
    ]

def get_max_allowed_error(bits: int) -> float:
    """ return minimum SQNR """
    return {
        2: 40,          # 2 bit量化允许最小SQNR
        4: 40,          # 4 bit量化允许最小SQNR
    }.get(bits, 40)

def weight_quant(weight, group_size, force_per_tensor=False):
    dtype = weight.dtype
    org_w_shape = list(weight.shape)
    M, K = weight.shape

    if not force_per_tensor:
        assert weight.shape[1] % group_size == 0, "group_size must be a divisor of weight.shape[1]"
        weight = weight.reshape(M, K// group_size, group_size).float()
        scale = 1 / weight.abs().mean(dim=-1).clamp(min=1e-5)
        qweight = (weight * scale.unsqueeze(-1).expand_as(weight)).round().clamp(-1, 1)
        qweight = qweight.type(dtype).reshape(org_w_shape)
    else :
        weight = weight.float()
        scale = 1 / weight.abs().mean().clamp(min=1e-5)
        qweight = (weight * scale).round().clamp(-1, 1)
        scale = scale * torch.ones(M, K // group_size).to(dtype)

    return qweight, scale


class TestTMACQuantizer(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        """一次性读取所有测试配置"""
        cls.test_configs = load_op_config_ini(CONFIG_PATH)  # 配置文件路径

    def test_accuracy(self):
        """端到端数值精度验证"""
        for cfg in self.test_configs:
            if cfg.K % cfg.group_size != 0:
                print(f"Skip: {cfg} (K % group_size != 0)")
                continue

            print(f"Testing: {cfg}")

            with self.subTest(f"{cfg.dtype}_m{cfg.M}k{cfg.K}b{cfg.bits}"):
                # 固定参数设置
                weight_dtype = torch.float16    # 权重量化类型
                qweight_dtype = torch.uint8     # 权重量化类型
                out_dtype = torch.float16   # 输出精度

                # 生成随机量化权重
                np.random.seed(42)  # 固定随机种子保证可重复性
                activation = torch.randn(cfg.N, cfg.K, dtype=out_dtype)
                weight = torch.randn(cfg.M, cfg.K, dtype=weight_dtype) 

                # NOTE : Current SQNR_group < SQNR_tensor
                qweight, scale = weight_quant(weight, cfg.group_size, force_per_tensor=True) 

                Aref = np.round(qweight + 2 ** (cfg.bits - 1)).to(torch.uint8)
                Sref = (scale * torch.ones((cfg.M, cfg.K // cfg.group_size)))
                Bref = activation
                Zref = None
                
                if cfg.m_groups == -1:
                    Adq = Aref.T.reshape(cfg.K // cfg.group_size, cfg.group_size, cfg.M).to(out_dtype) - (2 ** (cfg.bits - 1))
                    Adq = Adq.permute(1, 0, 2) * Sref.T
                    if cfg.zero_point:
                        Adq = Adq - Zref.T
                    Adq = Adq.permute(1, 0, 2).reshape(cfg.K, cfg.M).to(out_dtype)
                else:
                    Adq = (Aref.T.to(out_dtype) - (2 ** (cfg.bits - 1))) * Sref[0]

                real_ref = torch.matmul(activation, weight.T)
                Cref = torch.matmul(activation, Adq)      #> No need Transpose.

                #! Call Torch Native Preprocess Function.
                LUT_Scales, LUT_Biases, QLUT = torch.ops.torchao.preprocess(Bref, cfg.M, cfg.K, cfg.N, cfg.act_group_size, cfg.g, cfg.bits)

                A_t, Scales_t = preprocess_weights_torch(
                    Aref, Sref, None,
                    bits=cfg.bits, g=cfg.g,
                    bm=cfg.bm, kfactor=cfg.kfactor
                )
                Scales_t = Scales_t.to(torch.float16)
                A_t = A_t.to(torch.uint8)

                #! Call ONE Thread block. (Just compute one tile)
                C = torch.ops.torchao.qgemm_lut(
                    A_t, QLUT, Scales_t, LUT_Scales, LUT_Biases,
                    cfg.M, cfg.K, cfg.N, cfg.bm, cfg.g, cfg.bits
                )
                algo_sqnr = compute_error(Cref, real_ref)
                print(f"algo SQNR: {algo_sqnr}")
                print("Realref output :", real_ref)
                print("Pesudo Ref :", Cref)
                print("Real output :", C)

                compute_sqnr = compute_error(C, Cref)
                print(f"compute SQNR: {compute_sqnr}")

if __name__ == '__main__':
    unittest.main()

