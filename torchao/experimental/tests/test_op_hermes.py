import torch
import os

import torchao
current_path = os.path.dirname(os.path.abspath(__file__))

import unittest
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

class TestHermesOp(unittest.TestCase):
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

                activation = torch.ones(cfg.N, cfg.K, dtype=out_dtype).to("mps")
                weight = torch.ones(cfg.M, cfg.K, dtype=weight_dtype).to("mps")

                ret = torch.ops.torchao.mps_forward(
                    weight, activation.T
                )
                ret_ref = weight @ activation.T

                self.assertTrue(torch.allclose(ret, ret_ref, atol=1e-3, rtol=1e-3))

if __name__ == '__main__':
    unittest.main()

