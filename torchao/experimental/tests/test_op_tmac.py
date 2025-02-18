import torch
import os
current_path = os.path.dirname(os.path.abspath(__file__))

torch.ops.load_library(current_path + "/../cmake-out/libtorchao_ops_aten.dylib")

import copy
import tempfile
import unittest

import sys
sys.path.append(current_path + "/../ops/tmac/")
print(sys.path)
from t_mac.weights import preprocess_weights

import numpy as np

import configparser
import re
from dataclasses import dataclass
from typing import List

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

# 设置日志级别（0: INFO, 1: WARNING, 2: ERROR）
# torch._C._set_cpp_log_level(0)

def get_max_allowed_error(bits: int) -> float:
    """根据量化位宽返回允许的最大绝对误差"""
    return {
        2: 6,       # 2 bit量化允许较大误差
        4: 15,      # 4 bit量化允许较大误差
    }.get(bits, 0.2)

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
                weight_dtype = "uint8"  # 权重量化类型
                out_dtype = "float16"   # 输出精度

                # 生成随机量化权重
                # np.random.seed(42)  # 固定随机种子保证可重复性
                #> Standard quantized weight.
                Aref = np.random.randint(
                    0, 2**cfg.bits,
                    size=(cfg.M, cfg.K)
                ).astype(weight_dtype)
                # 生成缩放因子和零点（如果需要）
                # Sref = np.abs(np.random.randn(cfg.M, cfg.K // cfg.group_size)).astype(out_dtype)
                # Zref = np.random.randn(cfg.M, cfg.K // cfg.group_size).astype(out_dtype) if cfg.zero_point else None
                Zref = None
                if cfg.m_groups == -1:
                    Sref = np.abs(np.random.randn(cfg.M, cfg.K // cfg.group_size).astype(out_dtype))
                    if cfg.zero_point:
                        Zref = np.random.randn(cfg.M, cfg.K // cfg.group_size).astype(out_dtype)
                else:
                    Sref = np.abs(np.random.randn(cfg.m_groups,).astype(out_dtype))
                Bref = np.random.randn(cfg.N, cfg.K).astype(out_dtype)

                #> Testment.
                # Aref = np.ones((cfg.M, cfg.K), dtype=weight_dtype)
                # # Aref[:, ::2] = 0
                # Aref[::2, :] = 0
                Sref = np.ones((cfg.M, cfg.K // cfg.group_size), dtype=out_dtype)
                Zref = np.zeros((cfg.M, cfg.K // cfg.group_size), dtype=out_dtype) if cfg.zero_point else  None
                # # Bref = np.ones((cfg.N, cfg.K), dtype=out_dtype)

                # --- 计算参考输出 ---
                # 反量化权重矩阵
                if cfg.m_groups == -1:
                    # 分组反量化
                    Adq = Aref.T.reshape(cfg.K // cfg.group_size, cfg.group_size, cfg.M).astype(out_dtype) - (2 ** (cfg.bits - 1))
                    Adq = Adq.transpose(1, 0, 2) * Sref.T  # 应用缩放因子
                    if cfg.zero_point:
                        Adq -= Zref.T
                    Adq = Adq.transpose(1, 0, 2).reshape(cfg.K, cfg.M)
                else:
                    # 全局反量化
                    Adq = (Aref.T.astype(out_dtype) - 2**(cfg.bits-1)) * Sref[0]

                # 生成随机输入并计算参考输出
                Cref = Bref @ Adq  # 原始矩阵乘法结果

                # Cref = Cref.reshape(-1).repeat(cfg.bits).reshape(cfg.M, cfg.N)  # 扩展维度至 (M, N)

                # --- 量化计算流程 ---
                # 预处理输入数据
                B_torch = torch.tensor(Bref, dtype=torch.float16)
                LUT_Scales = torch.zeros((cfg.N, cfg.K // cfg.act_group_size), dtype=torch.float16)
                LUT_Biases = torch.zeros((cfg.N, cfg.K // cfg.act_group_size), dtype=torch.float16)
                QLUT = torch.zeros((cfg.N, cfg.K // cfg.g, 1 << cfg.g), dtype=torch.uint8)
                torch.ops.torchao.preprocess(B_torch, LUT_Scales, LUT_Biases, QLUT, cfg.M, cfg.K, cfg.N)

                # 预处理权重量化参数
                A_t, Scales_t = preprocess_weights(
                    Aref, Sref, Zref,
                    bits=cfg.bits, g=cfg.g,
                    bm=cfg.bm, kfactor=cfg.kfactor
                )

                A_t = torch.tensor(A_t, dtype=torch.uint8)
                Scales_t = torch.tensor(Scales_t, dtype=torch.float16)

                # 执行量化计算
                C = torch.zeros((cfg.N, cfg.M), dtype=torch.float16)
                torch.ops.torchao.qgemm_lut(
                    A_t, QLUT, Scales_t, LUT_Scales, LUT_Biases,
                    C, cfg.M, cfg.K, cfg.N, cfg.bits
                )

                # --- 结果验证 ---
                max_error = get_max_allowed_error(cfg.bits)

                np.testing.assert_allclose(
                    C.numpy(), Cref,
                    atol=max_error,
                    rtol=0.1,  # 允许10%的相对误差
                    err_msg=f"量化误差超过阈值 {max_error}，配置：{cfg}"
                )


if __name__ == '__main__':
    unittest.main()

    # bits = 2
    # M = 3200
    # N = 1
    # K = 3200
    # zero_point = True
    # dtype = "int8"
    # g = 4
    # group_size = 128
    # act_group_size = 64
    # m_groups = -1  # should be -1 or 1 in test_e2e.py

    # bm = 128
    # kfactor = 16

    # weight_dtype = "uint8"
    # out_dtype = "float16"

    # #> Quantized weights
    # Aref = np.random.randint(0, 2 ** bits, size=(M, K)).astype(weight_dtype)
    # Sref = np.abs(np.random.randn(M, K // group_size).astype(out_dtype))
    # Zref = None
    # if zero_point:
    #     Zref = np.random.randn(M, K // group_size).astype(out_dtype)

    # if m_groups == -1:
    #     Adq = Aref.T.reshape(K // group_size, group_size, M).astype(out_dtype) - (2 ** (bits - 1))
    #     Adq = Adq.transpose(1, 0, 2) * Sref.T
    #     if zero_point:
    #         Adq = Adq - Zref.T
    #     Adq = Adq.transpose(1, 0, 2).reshape(K, M)
    # else:
    #     Adq = (Aref.T.astype(out_dtype) - (2 ** (bits - 1))) * Sref[0]

    # Bref = np.random.randn(N, K).astype(out_dtype)
    # Cref = Bref.dot(Adq)
    # print(Cref)

    # # 生成随机张量 (正态分布)
    # # Bref = torch.randn((N, K), dtype=torch.float16)  # 等效 np.random.randn(...).astype(...)
    # Bref = torch.tensor(Bref, dtype=torch.float16)

    # # 初始化 LUT 缩放因子和偏置张量
    # LUT_Scales = torch.zeros((N, K // act_group_size), dtype=torch.float16)
    # LUT_Biases = torch.zeros((N, K // act_group_size), dtype=torch.float16)

    # # 初始化量化查找表 QLUT
    # QLUT = torch.zeros((N, K // g, 1 << g), dtype=torch.uint8)  # 1<<g = 2^g

    # torch.ops.torchao.preprocess(Bref, LUT_Scales, LUT_Biases, QLUT, M, K, N)

    # A_t, Scales_t = preprocess_weights(Aref, Sref, Zref, bits=bits, g=g, bm=bm, kfactor=kfactor)

    # A_t = torch.tensor(A_t, dtype=torch.uint8)
    # Scales_t = torch.tensor(Scales_t, dtype=torch.float16)

    # C = torch.zeros((M, N), dtype=torch.float16)

    # torch.ops.torchao.qgemm_lut(A_t, QLUT, Scales_t, LUT_Scales, LUT_Biases, C, M, K, N, bits)

    # import pdb; pdb.set_trace()
