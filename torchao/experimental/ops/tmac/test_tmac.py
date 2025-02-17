import configparser
import subprocess
import pytest

import torch

# 固定参数
FIXED_PARAMS = {
    "warmup": 50,  # 固定 warmup 次数
    "repeat": 100,  # 固定 repeat 次数
    "n_threads": 4,  # 固定线程数
    "bits": 2,  # 固定 bits 为 2
    "g": 4,  # 固定 g 为 4
    "group_size": 128,  # 固定 group_size 为 128
    "act_group_size": 64,  # 固定 act_group_size 为 64
}

def parse_ini_file(ini_file):
    """
    解析 .ini 文件，提取参数并转换为 benchmark 所需的格式。
    """
    config = configparser.ConfigParser()
    config.read(ini_file)
    
    testcases = []
    for section in config.sections():
        # 从 section 名称中提取 M 和 K
        section_name = section.strip("[]")
        parts = section_name.split("_")
        M = int(parts[4][1:]) / FIXED_PARAMS["bits"]  # 提取 mXXXX
        K = int(parts[5][1:])  # 提取 kXXXX
        
        # 从 section 中读取其他参数
        bm = int(config[section]["bm"])
        
        # 构造 benchmark 参数
        benchmark_params = [
            str(M),  # M
            str(K),  # K
            "1",  # N (固定为 1)
            str(FIXED_PARAMS["warmup"]),  # warmup
            str(FIXED_PARAMS["repeat"]),  # repeat
            str(FIXED_PARAMS["n_threads"]),  # n_threads
            str(bm),  # bm
            # str(FIXED_PARAMS["g"]),  # g
            # str(FIXED_PARAMS["group_size"]),  # group_size
            # str(FIXED_PARAMS["act_group_size"]),  # act_group_size
            # str(FIXED_PARAMS["bits"]),  # bits
        ]
        
        testcases.append(benchmark_params)
    
    return testcases

# 读取 .ini 文件并解析参数
ini_file = "/home/edgellm/Baselines/ao/torchao/experimental/ops/tmac/tuned/kcfg.ini"
testcases = parse_ini_file(ini_file)

@pytest.mark.parametrize("params", testcases)
def test_benchmark(params):
    """
    测试 benchmark 命令。
    """
    # 执行 benchmark 命令
    benchmark_process = subprocess.run(
        ["./build/benchmark"] + params,  # 拼接命令和参数
        capture_output=True,
        text=True
    )
    
    # 检查 benchmark 命令的返回值是否为0
    assert benchmark_process.returncode == 0, f"benchmark failed with return code {benchmark_process.returncode}"

if __name__ == "__main__":
    pytest.main()
