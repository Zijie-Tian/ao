import numpy as np
from typing import List

# from torchao.quantization.utils import compute_error

import sys
sys.path.append("../")

from t_mac.ops import QGeMMLUTBitsCodegen, QGeMMLUTBitsPreprocessorCodegen
from t_mac.utils import get_default_device_kwargs, get_devices
from t_mac.model_utils import get_preset_models, extract_kernel_shapes, get_quantization_config
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
K = 64
g = 4
bm = 256
kfactor = 16
act_group_size = 64
group_size = 64 
out_dtype = 'float16'
dtype = 'int8'
zero_point = False
m_groups = -1

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
        
        # 重塑为 (num_groups, group_size)
        weight = weight.reshape(-1, group_size).astype(np.float32)
        
        # 计算缩放因子：每个组的绝对均值倒数 (添加最小截断值防止除零)
        scale = 1 / np.clip(np.mean(np.abs(weight), axis=1), 1e-5, None)
        
        # 应用缩放并量化 (-1, 0, +1)
        qweight = np.round(weight * scale[:, np.newaxis]).clip(-1, 1)
        
    else:
        # 全局量化逻辑
        weight = weight.astype(np.float32)
        scale = 1 / np.clip(np.mean(np.abs(weight)), 1e-5, None)
        qweight = np.round(weight * scale).clip(-1, 1) 

    # 恢复原始形状和数据类型
    return qweight.reshape(org_shape).astype(dtype), scale

# weight = np.random.randn(M, K).astype(out_dtype)      # FP16
weight = np.ones((M, K), dtype=out_dtype)               # FP16
weight[::2, :] = 0
# weight[:, ::2] = 0
# weight = np.random.randint(2, size=(M // bits, K)).astype(out_dtype)
activation = np.random.randn(N, K).astype(out_dtype)    # FP16
qweight, scale = weight_quant_numpy(weight, -1)

pesudo_qweight = qweight * scale

qweight = np.round(qweight + 2 ** (bits - 1)).astype("uint8")
# qweight = qweight.astype("uint8")

Aref, Sref = preprocess_weights(qweight, scale.reshape(1), None, bits=bits, g=g, bm=bm, kfactor=kfactor)

print_binary(Aref)
# import pdb; pdb.set_trace() 

Bref = activation
Zref = None

# 输入数据初始化
# Aref = 3 * np.ones((M // bits, K), dtype=np.uint8)  # 全3，二进制11
# Bref = np.ones((N, K), dtype=np.float16)  # 全1
# Sref = np.ones((M // bits, K // group_size), dtype=np.float16)  # 全1
# Zref = np.zeros((M // bits, K // group_size), dtype=np.float16) if zero_point else None

# 预处理部分
def preprocessor_reference(B, act_group_size, g, dtype, out_dtype):
    N, K = B.shape
    num_act_groups = K // act_group_size
    LUT_Scales = np.zeros((N, num_act_groups), dtype=out_dtype)
    LUT_Biases = np.zeros((N, num_act_groups), dtype=out_dtype)
    
    # 计算LUT_Scales和LUT_Biases
    for n in range(N):
        for kk in range(num_act_groups):
            start = kk * act_group_size
            end = start + act_group_size
            group = B[n, start:end].reshape(-1, g)
            max_sum = np.max(np.abs(np.sum(group, axis=1)))
            LUT_Scales[n, kk] = max_sum / 127.0  # int8的maxv是127
            
            # 计算LUT_Biases（假设gamma=1）
            code0_sum = np.sum([np.sum(g) for g in group * -1])  # code=0的映射和为-4每个子组
            LUT_Biases[n, kk] = code0_sum  # 这里简化处理
    
    # 生成QLUT
    QLUT = np.zeros((N, K//g, 2**g), dtype=dtype)
    codes = np.arange(2**g, dtype=np.uint8)
    for n in range(N):
        for k in range(K//g):
            group = B[n, k*g : (k+1)*g]
            ils = 1.0 / LUT_Scales[n, k*g // act_group_size]
            for code in range(2**g):
                m = np.array([(code >> i) & 1 for i in range(g)], dtype=np.float16)
                m = m * 2 - 1  # 映射到-1和1
                val = np.dot(group, m)
                qval = np.round(val * ils).astype(dtype)
                QLUT[n, k, code] = qval
                
    return LUT_Scales, LUT_Biases, QLUT

# 运行预处理
LUT_Scales, LUT_Biases, QLUT = preprocessor_reference(Bref, act_group_size, g, dtype, out_dtype)

import pdb; pdb.set_trace()

def get_bits_alphas(bits: int):
    alphas = [1 / 2, 1, 2, 4]
    return alphas[:bits]

# 矩阵乘法部分
def qgemm_reference(A, QLUT, LUT_Scales, LUT_Biases, scales, bits, g, group_size, m_groups, bm=512, kfactor=16):
    """修改后的正确实现"""
    # 从预处理后的A获取维度信息
    M_bm, K_g, A_cols = A.shape  # 预处理后的A形状 (M//bm, K//g, bm//ngroups_per_elem)
    _ngroups_per_elem = 8 // g    # 每个uint8元素包含的组数
    simd_n_in = 16               # 根据preprocess_weights中的参数
    simd_n_out = 8               # 根据preprocess_weights中的参数
    
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
    
    scales = scales * np.ones((M // bm, K // group_size, bm // bits // simd_n_out, simd_n_out), dtype=out_dtype)

    import pdb; pdb.set_trace()

    
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

# 运行矩阵乘法
C = qgemm_reference(Aref, QLUT, LUT_Scales, LUT_Biases, Sref, bits, g, group_size, m_groups, bm=bm, kfactor=kfactor)


C_ref = activation @ pesudo_qweight.T
print("Reference C:", C_ref)
print("Simulated C:", C)

SQNR = compute_error(C_ref, C)

print("SQNR:", SQNR)

import pdb; pdb.set_trace()