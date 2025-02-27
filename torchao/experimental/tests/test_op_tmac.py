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
    zero_point: bool = True
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

def weight_quant(weight, group_size):
    dtype = weight.dtype
    org_w_shape = weight.shape

    if group_size > 0:
        assert weight.shape[1] % group_size == 0, "group_size must be a divisor of weight.shape[1]"
        weight = weight.reshape(-1, group_size).float()
        scale = 1 / weight.abs().mean(dim=1).clamp(min=1e-5)
        qweight = (weight * scale.unsqueeze(-1).expand_as(weight)).round().clamp(-1, 1)
    else :
        weight = weight.float()
        scale = 1 / weight.abs().mean().clamp(min=1e-5)
        qweight = (weight * scale).round().clamp(-1, 1)

    return qweight.type(dtype).reshape(org_w_shape), scale

    # dtype = weight.dtype
    # weight = weight.float()
    # weight_
    # s =  1 / weight.abs().mean().clamp(min=1e-5)
    # result = (weight * s).round().clamp(-1, 1) / s
    # return result.type(dtype)

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
                # np.random.seed(42)  # 固定随机种子保证可重复性
                # activation = torch.randn(cfg.N, cfg.K, dtype=out_dtype)
                # weight = torch.randn(cfg.M, cfg.K, dtype=weight_dtype)

                activation = torch.ones(cfg.N, cfg.K, dtype=out_dtype).to("cpu")
                weight = torch.ones(cfg.M, cfg.K, dtype=weight_dtype).to("cpu")

                # print(f"Activation: {activation} and Weight: {weight}")

                qweight, scale = weight_quant(weight, cfg.group_size)

                if cfg.group_size > 0:
                    pesudo_weight = qweight.reshape(-1, cfg.group_size).float()
                    pesudo_weight = pesudo_weight * scale.unsqueeze(-1).expand_as(pesudo_weight)
                    pesudo_weight = pesudo_weight.view(weight.shape)
                    pesudo_ref = activation @ qweight.T
                    #! Note this "+2"
                    qweight = (qweight + 2 ** (cfg.bits - 1)).type(qweight_dtype)
                    scale = scale.reshape(-1, cfg.K // cfg.group_size).type(out_dtype)
                else :
                    pesudo_weight = qweight.type(out_dtype) * scale
                    pesudo_ref = activation @ pesudo_weight.T
                    #! Note this "+2"
                    qweight = torch.round(qweight + 2 ** (cfg.bits - 1)).to(qweight_dtype)
                    scale = scale * torch.ones(cfg.M, cfg.K, dtype=torch.float16)

                real_ref = activation @ weight.T

                sqnr = compute_error(pesudo_ref, real_ref)
                print(f"algo SQNR: {sqnr}")

                # 初始化缩放因子和零点
                # Zref = None
                # if cfg.m_groups == -1:
                #     Sref = torch.abs(torch.randn(cfg.M, cfg.K // cfg.group_size)).to(dtype=out_dtype)
                #     if cfg.zero_point:
                #         Zref = torch.randn(cfg.M, cfg.K // cfg.group_size).to(dtype=out_dtype)
                # else:
                #     Sref = torch.abs(torch.randn(cfg.m_groups,)).to(dtype=out_dtype)

                # 生成 Bref
                LUT_Scales = torch.zeros((cfg.N, cfg.K // cfg.act_group_size), dtype=torch.float16)
                LUT_Biases = torch.zeros((cfg.N, cfg.K // cfg.act_group_size), dtype=torch.float16)
                QLUT = torch.zeros((cfg.N, cfg.K // cfg.g, 1 << cfg.g), dtype=torch.uint8)
                torch.ops.torchao.preprocess(activation, LUT_Scales, LUT_Biases, QLUT, cfg.M, cfg.K, cfg.N, cfg.bits)

                qweight_t, Scales_t = preprocess_weights_torch(
                    qweight, scale, None,
                    bits=cfg.bits, g=cfg.g,
                    bm=cfg.bm, kfactor=cfg.kfactor
                )
                
                import pdb; pdb.set_trace()
                
                qweight_t = torch.tensor(qweight_t, dtype=torch.uint8)
                Scales_t = torch.tensor(Scales_t, dtype=torch.float16)
                # print(f"QWeight: {qweight_t} and Scales: {Scales_t}")

                C = torch.zeros((cfg.N, cfg.M), dtype=torch.float16)
                # print(C)
                # print(f"{QLUT} and Weight: {LUT_Scales} and {LUT_Biases}")
                torch.ops.torchao.qgemm_lut(
                    qweight_t, QLUT, Scales_t, LUT_Scales, LUT_Biases,
                    C, cfg.M, cfg.K, cfg.N, cfg.bits
                )

                compute_sqnr = compute_error(C, pesudo_ref)
                print(f"compute SQNR: {compute_sqnr}")

                import pdb; pdb.set_trace()

                continue

if __name__ == '__main__':
    unittest.main()

