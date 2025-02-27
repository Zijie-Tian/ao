import numpy as np
import os
import tvm
from tvm.autotvm.measure.measure_methods import request_remote

import sys
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from t_mac.ops import QGeMMLUTBitsCodegen, QGeMMLUTBitsPreprocessorCodegen
from t_mac.weights import preprocess_weights
from t_mac.utils import get_default_device_kwargs, nmse
import logging

def print_binary(array):
    # np.set_printoptions(threshold=np.inf)  # 不省略任何元素
    binary_array = np.vectorize(lambda x: format(x if x >= 0 else (1 << 8) + x, '08b'))(array)
    print(binary_array)

def weight_quant_numpy(weight, group_size):
    """NumPy实现的权重量化函数
    Args:
        weight: numpy数组格式的权重矩阵，形状为(out_features, in_features)
        group_size: 量化分组大小，-1表示全局量化
    Returns:
        qweight: 量化后的权重矩阵，数据类型保持与输入一致
        scale: 缩放因子数组
    """
    dtype = weight.dtype
    org_shape = weight.shape

    if group_size > 0:
        # 分组量化逻辑
        assert weight.shape[1] % group_size == 0, "group_size必须能整除输入维度"
        
        weight = weight.reshape(-1, group_size).astype(np.float32)
        scale = 1 / np.clip(np.mean(np.abs(weight), axis=1), 1e-5, None)
        qweight = np.round(weight * scale[:, np.newaxis]).clip(-1, 1)
    else:
        # 全局量化逻辑
        weight = weight.astype(np.float32)
        scale = 1 / np.clip(np.mean(np.abs(weight)), 1e-5, None)
        qweight = np.round(weight * scale).clip(-1, 1) 

    # 恢复原始形状和数据类型
    return qweight.reshape(org_shape).astype(dtype), scale

logging.basicConfig()
logging.getLogger().setLevel(logging.INFO)

np.random.seed(21)
bits = 2
M = 4096 * bits
N = 1
K = 4096
zero_point = False
dtype = "int8"
g = 4
group_size = 128
act_group_size = 64
m_groups = -1  # should be -1 or 1 in test_e2e.py

if act_group_size == -1:
    act_group_size = K

device_kwargs = get_default_device_kwargs()

print(device_kwargs)

out_dtype = device_kwargs["out_dtype"]

remote_kwargs = None
codegen_kwargs = {
    "save_dir": os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "out"),
    "dtype": dtype,
    "target": device_kwargs["target"],
    "verify": True,
    "tune": False,
    "remote_kwargs": device_kwargs["remote_kwargs"],
    "bits": bits,
    "out_dtype": out_dtype,
    "act_group_size": act_group_size,
    "cc_opts": device_kwargs["cc_opts"],
}

preprocessor = QGeMMLUTBitsPreprocessorCodegen(name="preprocessor", fast_aggregation_k=0, **codegen_kwargs)
qgemm = QGeMMLUTBitsCodegen(name="qgemm_lut", group_size=group_size, m_groups=m_groups, aggregation_dtype=device_kwargs["aggregation_dtype"], zero_point=zero_point, **codegen_kwargs)

pf, _ = preprocessor.compile(N, K)
qf, _ = qgemm.compile(M, N, K)

bm = qgemm.bm
kfactor = qgemm.kfactor
weight_dtype = qgemm.weight_dtype

# Inputs

# M = 4 * bits
# K = 8 
# N = 1
# group_size = 2

weight = np.random.randn(M // bits, K).astype(out_dtype)      # FP16
# weight = np.ones((M // bits, K), dtype=out_dtype)           # FP16
# weight[::2, :] = 0
# weight[:, ::2] = 0
# weight = np.random.randint(2, size=(M // bits, K)).astype(out_dtype)
activation = np.random.randn(N, K).astype(out_dtype) # FP16
# activation = np.ones((N, K)).astype(out_dtype)            # FP16
qweight, scale = weight_quant_numpy(weight, -1)

#! Aref is positive integer, So we need to add 2 ** (bits - 1)
Aref = np.round(qweight + 2 ** (bits - 1)).astype("uint8")
Sref = (scale * np.ones((M // bits, K // group_size))).astype(out_dtype)

# Aref = np.random.randint(0, 2 ** bits, size=(M // bits, K)).astype(weight_dtype)
# Aref = 3 * np.ones((M // bits, K)).astype(weight_dtype)
Zref = None
# if m_groups == -1:
#     Sref = np.abs(np.random.randn(M // bits, K // group_size).astype(out_dtype))
#     # Sref = np.abs(np.ones((M // bits, K // group_size)).astype(out_dtype))
#     if zero_point:
#         Zref = np.random.randn(M // bits, K // group_size).astype(out_dtype)
# else:
#     Sref = np.abs(np.random.randn(m_groups,).astype(out_dtype))
Bref = np.random.randn(N, K).astype(out_dtype)
# Bref = np.ones((N, K)).astype(out_dtype)

# Outputs
if m_groups == -1:
    Adq = Aref.T.reshape(K // group_size, group_size, M // bits).astype(out_dtype) - (2 ** (bits - 1))
    #> [group_size, K // group_size, M // bits] * [K // group_size, M // bits]
    Adq = Adq.transpose(1, 0, 2) * Sref.T
    if zero_point:
        Adq = Adq - Zref.T
    Adq = Adq.transpose(1, 0, 2).reshape(K, M // bits)
else:
    Adq = (Aref.T.astype(out_dtype) - (2 ** (bits - 1))) * Sref[0]

Cref = Bref.dot(Adq)


dev = tvm.device("llvm")
# TVM Inputs
A_t, Scales_t = preprocess_weights(Aref, Sref, Zref, bits=bits, g=g, bm=bm, kfactor=kfactor)
A_t = tvm.nd.array(A_t, dev)
B_t = tvm.nd.array(Bref, dev)
Scales_t = tvm.nd.array(Scales_t, dev)

# TVM Outputs
C_t = tvm.nd.array(Cref, dev)

# TVM Intermediates
LUT_Scales = tvm.nd.array(np.zeros((N, K // act_group_size), dtype=out_dtype), dev)
LUT_Biases = tvm.nd.array(np.zeros((N, K // act_group_size), dtype=out_dtype), dev)
QLUT = tvm.nd.array(np.zeros((N, K // g, 1 << g), dtype=dtype), dev)

# import pdb; pdb.set_trace()

pf(B_t, LUT_Scales, LUT_Biases, QLUT)

import pdb; pdb.set_trace()

qf(A_t, QLUT, Scales_t, LUT_Scales, LUT_Biases, C_t)

print("Reference C :", Cref)
print("TVM compute :", C_t.numpy())
print("NMSE : ", nmse(Cref, C_t.numpy()))

# np.save("A_t.npy", A_t.numpy())
# np.save("QLUT.npy", QLUT.numpy())
# np.save("Scales_t.npy", Scales_t.numpy())
# np.save("LUT_Scales.npy", LUT_Scales.numpy())
# np.save("LUT_Biases.npy", LUT_Biases.numpy())

import pdb; pdb.set_trace()