import numpy as np
from typing import List

# from torchao.quantization.utils import compute_error

import sys
sys.path.append("../")

from t_mac.ops import QGeMMLUTBitsCodegen, QGeMMLUTBitsPreprocessorCodegen
from t_mac.utils import get_default_device_kwargs, get_devices
from t_mac.model_utils import get_preset_models, extract_kernel_shapes, get_quantization_config
from t_mac.utils import get_default_device_kwargs, nmse
from t_mac.weights import preprocess_weights

def compute_error(x, y):
    Ps = np.linalg.norm(x)
    Pn = np.linalg.norm(x - y)
    return 20 * np.log10(Ps / Pn)

def print_binary(array):
    # np.set_printoptions(threshold=np.inf)  # 不省略任何元素
    binary_array = np.vectorize(lambda x: format(x if x >= 0 else (1 << 8) + x, '08b'))(array)
    print(binary_array)

# 参数设置
bits = 2
M = 4096 * bits
N = 1
K = 4096               #> K >= g * kfactor && K >= act_group_size && K >= group_size
g = 4
bm = 256
simd_n_in = 16
simd_n_out = 8
kfactor = 16
act_group_size = 64  #> act_group_size >= g
group_size = 128
out_dtype = 'float16'
dtype = 'int8'
zero_point = False
m_groups = -1

np.random.seed(21)
# bits = 2
# M = 4 * bits
# N = 1
# K = 8               #> K >= g * kfactor && K >= act_group_size && K >= group_size
# g = 4
# bm = 4
# simd_n_in = 2
# simd_n_out = 1
# kfactor = 2
# act_group_size = 4  #> act_group_size >= g
# group_size = 2 
# out_dtype = 'float16'
# dtype = 'int8'
# zero_point = False
# m_groups = -1

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
    return qweight.reshape(org_shape).astype(dtype), scale.astype(dtype)

weight = np.random.randn(M // bits, K).astype(out_dtype)      # FP16
# weight[::2, :] = 0
# weight[:, ::2] = 0
# weight = np.random.randint(2, size=(M // bits, K)).astype(out_dtype)
activation = np.random.randn(N, K).astype(out_dtype)  # FP16
# activation = np.ones((N, K)).astype(out_dtype)            # FP16

np.save("weight.npy", weight)
np.save("activation.npy", activation)

# weight = np.load("weight.npy").astype(out_dtype)
# activation = np.load("activation.npy").astype(out_dtype) # FP16

# TODO : Implement real group quantization.
qweight, scale = weight_quant_numpy(weight, -1)

# scale = scale * np.ones((M // bits, K // group_size), dtype=out_dtype)

Aref = np.round(qweight + 2 ** (bits - 1)).astype("uint8")
Sref = (scale * np.ones((M // bits, K // group_size))).astype(out_dtype)
Bref = activation
Zref = None

if m_groups == -1:
    Adq = Aref.T.reshape(K // group_size, group_size, M // bits).astype(out_dtype) - (2 ** (bits - 1))
    #> [group_size, K // group_size, M // bits] * [K // group_size, M // bits]
    Adq = Adq.transpose(1, 0, 2) * Sref.T
    if zero_point:
        Adq = Adq - Zref.T
    Adq = Adq.transpose(1, 0, 2).reshape(K, M // bits)
else:
    Adq = (Aref.T.astype(out_dtype) - (2 ** (bits - 1))) * Sref[0]

# pesudo_qweight = qweight.reshape(M // bits, K // group_size, group_size).astype(out_dtype)
# pesudo_qweight = (pesudo_qweight.transpose(2, 1, 0) * scale.T).transpose(2, 1, 0).reshape(M // bits, K).astype(out_dtype)
# qweight = np.round(qweight + 2 ** (bits - 1)).astype("uint8")

Cref = Bref.dot(Adq) 

A_t, Scales_t = preprocess_weights(Aref, Sref, None, bits=bits, g=g, bm=bm, kfactor=kfactor, simd_n_in=simd_n_in, simd_n_out=simd_n_out)



#! ========================================================================================================================

# 输入数据初始化
# Aref = 3 * np.ones((M // bits, K), dtype=np.uint8)  # 全3，二进制11
# Bref = np.ones((N, K), dtype=np.float16)  # 全1
# Sref = np.ones((M // bits, K // group_size), dtype=np.float16)  # 全1
# Zref = np.zeros((M // bits, K // group_size), dtype=np.float16) if zero_point else None

# # 预处理部分
# def preprocessor_reference(B, act_group_size, g, dtype, out_dtype):
#     N, K = B.shape
#     num_act_groups = K // act_group_size
#     #> 这里就是沿着K的轴进行量化。
#     LUT_Scales = np.zeros((N, num_act_groups), dtype=out_dtype)
#     LUT_Biases = np.zeros((N, num_act_groups), dtype=out_dtype)
    
#     # 计算LUT_Scales和LUT_Biases
#     for n in range(N):
#         for kk in range(num_act_groups):
#             start = kk * act_group_size
#             end = start + act_group_size
#             group = B[n, start:end].reshape(-1, g)
#             max_sum = np.max(np.abs(np.sum(group, axis=1)))
#             LUT_Scales[n, kk] = max_sum / 127.0  # int8的maxv是127
            
#             # 计算LUT_Biases（假设gamma=1）
#             code0_sum = np.sum([np.sum(g) for g in group * -1])  # code=0的映射和为-4每个子组
#             #! 这LUT_Bias是为了回到0点。
#             LUT_Biases[n, kk] = code0_sum  # 这里简化处理
    
#     # 生成QLUT
#     QLUT = np.zeros((N, K//g, 2**g), dtype=dtype)
#     codes = np.arange(2**g, dtype=np.uint8)
#     for n in range(N):
#         for k in range(K//g):
#             group = B[n, k*g : (k+1)*g]
#             #> 此处实现了LUT表的量化，使用之前计算好的Scales。
#             #! 这个地方同时实现了对于activation的动态量化。
#             ils = 1.0 / LUT_Scales[n, k*g // act_group_size]
#             for code in range(2**g):
#                 m = np.array([(code >> i) & 1 for i in range(g)], dtype=np.float16)     #> 拆分每一个bit位。
#                 m = m * 2 - 1           # [0 -> -1, 1 -> 1]
#                 val = np.dot(group, m)  # PreCompute all possible LUT results.
#                 qval = np.round(val * ils).astype(dtype)
#                 QLUT[n, k, code] = qval
                
#     return LUT_Scales, LUT_Biases, QLUT

# 预处理部分
def preprocessor_reference(B, act_group_size, g, dtype, out_dtype):
    _states = [-1, 1]
    _gamma = 1
    maxv = (1 << 7) - 1
    
    b = B.reshape(N, K // g, g)

    codes = np.array([[i] for i in range(1 << g)], dtype=np.uint8)
    codes = np.unpackbits(codes, axis=1, bitorder="little", count=g).T

    def map_states(c):
        return _states[c]

    m = np.vectorize(map_states)(codes).astype(out_dtype)

    # import pdb; pdb.set_trace()

    # (N, K // g, 1 << g)
    lut = b.dot(m)
    lut_biases = lut.reshape(N, K // act_group_size, act_group_size // g, 1 << g)[:, :, :, 0]
    lut_biases = np.sum(lut_biases, axis=-1) * _gamma

    # quantization
    qlut = lut.reshape(N, K // act_group_size, act_group_size // g * (1 << g))
    absmax = np.max(np.abs(qlut), axis=-1)      #! This abs + max will calculate the SUM of each group.
    lut_scales = absmax / maxv

    def recp(s):
        return 1.0 / s if s != 0 else 0

    ils = np.vectorize(recp)(lut_scales).astype(out_dtype)
    qlut = np.rint(
        (qlut.transpose(2, 0, 1).reshape(-1, qlut.shape[0] * qlut.shape[1]) * ils.reshape(1, qlut.shape[0] * qlut.shape[1]))
        .reshape(qlut.shape[2], qlut.shape[0], qlut.shape[1]).transpose(1, 2, 0).reshape(N, K // g, 1 << g)
    ).astype(dtype)

    return B, lut_scales, lut_biases, qlut


# 运行预处理
Bref, LUT_Scales, LUT_Biases, QLUT = preprocessor_reference(Bref, act_group_size, g, dtype, out_dtype)

# import pdb; pdb.set_trace() 

#! ========================================================================================================================

def get_bits_alphas(bits: int):
    alphas = [1 / 2, 1, 2, 4]
    return alphas[:bits]

# 矩阵乘法部分
#! qgemm_reference 经过验证完全没有错误
def qgemm_reference(A, QLUT, LUT_Scales, LUT_Biases, scales, bits, g, group_size, m_groups, simd_n_in, simd_n_out, bm=512, kfactor=16):
    """修改后的正确实现"""
    # 从预处理后的A获取维度信息
    M_bm, K_g, A_cols = A.shape  # 预处理后的A形状 (M//bm, K//g, bm//ngroups_per_elem)
    _ngroups_per_elem = 8 // g    # 每个uint8元素包含的组数
    # simd_n_in = 16               # 根据preprocess_weights中的参数
    # simd_n_out = 8               # 根据preprocess_weights中的参数
    
    # 计算实际维度
    M = M_bm * bm                # 原始权重行数
    K = K_g * g                  # 原始输入维度
    N, _, lut_size = QLUT.shape  # QLUT形状 (N, K//g, 16)

    # 计算中间维度参数
    mgroup = _ngroups_per_elem * simd_n_in
    num_simd_blocks = bm // mgroup

    alphas = get_bits_alphas(bits)

    cbits = np.zeros((N, M), dtype=out_dtype)
    # 初始化累加器

    A = A.reshape(M // bm, K // g // kfactor, bm // _ngroups_per_elem // simd_n_in, kfactor, simd_n_in)
    A = np.concatenate([(A >> (g * ng)) & ((1 << g) - 1) for ng in range(_ngroups_per_elem)], axis=-1)
    
    #! 注意这地方其实没啥问题，因为TMAC应该没有对weight进行group的量化。
    scales = scales.reshape(M // bm, K // group_size, bm // bits // simd_n_out, simd_n_out)

    # import pdb; pdb.set_trace()
    for n in range(N):
        for k in range(K // g):
            for m in range(M):
                #> In this Loop, M is M * bits.
                mo = m // bm
                ko = k // kfactor
                mi = (m % bm) // _ngroups_per_elem // simd_n_in
                ki = k % kfactor
                e = (m % bm) % (_ngroups_per_elem * simd_n_in)
                a_e = A[mo, ko, mi, ki, e]

                scales_mi = (m % bm) // bits // simd_n_out
                scales_e = ((m % bm) % simd_n_out)

                # import pdb; pdb.set_trace()

                if m_groups == -1:
                    if zero_point:
                        s = scales[mo, k * g // group_size, scales_mi, 0, scales_e]
                    else:
                        s = scales[mo, k * g // group_size, scales_mi, scales_e]
                else:
                    m_group_size = M // m_groups
                    s = scales[m // m_group_size]

                cbits[n, m] += QLUT[n, k, a_e] * LUT_Scales[n, k * g // act_group_size] * s
                if (((k * g) % act_group_size) == 0) and ((((m % bm) // simd_n_out) % bits) == 0):
                    cbits[n, m] += LUT_Biases[n, k * g // act_group_size] * s
                    if zero_point:
                        cbits[n, m] += LUT_Biases[n, k * g // act_group_size] * (1 / alphas[0]) * scales[mo, k * g // group_size, scales_mi, 1, scales_e]

    c = (
        cbits.reshape((N, M // simd_n_out // bits, bits, simd_n_out))
            .transpose(0, 1, 3, 2)
            .dot(np.array(alphas, dtype=out_dtype))
            .reshape((N, M // bits))
        )

    return c

C = qgemm_reference(A_t, QLUT, LUT_Scales, LUT_Biases, Scales_t, bits, g, group_size, m_groups, simd_n_in=simd_n_in, simd_n_out=simd_n_out, bm=bm, kfactor=kfactor)

print("Reference C:", Cref)
print("Simulated C:", C)

SQNR = compute_error(Cref, C)
NMSE = nmse(Cref, C)

print("NMSE :", NMSE)
print("SQNR :", SQNR)

import pdb; pdb.set_trace()