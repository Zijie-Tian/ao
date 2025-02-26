import numpy as np 
import torch

import sys
sys.path.append("../")

from t_mac.ops import QGeMMLUTBitsCodegen, QGeMMLUTBitsPreprocessorCodegen
from t_mac.utils import get_default_device_kwargs, get_devices
from t_mac.model_utils import get_preset_models, extract_kernel_shapes, get_quantization_config
from t_mac.weights import preprocess_weights

from typing import List, Tuple
import subprocess
import platform
import logging
logger = logging.getLogger("test")

ARCH_MAP = {
    "arm64": "aarch64",
    "AMD64": "x86_64",
    "ARM64": "aarch64",
    "x86": "x86_64",
}

def get_system_info() -> Tuple[str, str]:
    """Get OS and processor architecture"""
    system = platform.system()
    processor = platform.machine()
    if system == "Windows":
        # https://github.com/python/cpython/issues/98962
        # A workaround as TVM doesn't support python 3.12
        try:
            import wmi
            arch = wmi.WMI().Win32_Processor()[0].Architecture
            WIN_ARCH_MAP = {
                0: "x86",
                9: "AMD64",
                12: "ARM64",
            }
            processor = WIN_ARCH_MAP[arch]
        except ImportError:
            import os
            arch = os.environ.get("TMAC_NATIVE_CPU_ARCH")
            if arch is None:
                logger.warn("Install wmi through `pip install wmi` to get accurate CPU architecture on Windows. "
                            "Otherwise, please specify CPU architecture manually through environment `TMAC_NATIVE_CPU_ARCH`. "
                            "Ignore this warning if you are not using Windows on ARM.")
            else:
                processor = arch
    processor = ARCH_MAP.get(processor, processor)
    return system, processor

def get_osx_sdk_root() -> str:
    if get_system_info()[0] == "Darwin":
        try:
            return subprocess.check_output(["xcrun", "--show-sdk-path"]).decode().strip()
        except subprocess.CalledProcessError:
            return ""
    return ""

def get_osx_isysroot() -> List[str]:
    sdk_root = get_osx_sdk_root()
    if sdk_root:
        return ["-isysroot", sdk_root]
    else:
        return []


def weight_quant(weight: torch.Tensor) -> torch.Tensor:
    dtype = weight.dtype
    weight = weight.float()
    scale = weight.abs().mean().clamp(min=1e-5)
    iscale = 1 / scale
    # TODO: multiply by the scale directly instead of inverting it twice
    # (this is also unnecessarily doubly inverted upstream)
    # ref: https://huggingface.co/1bitLLM/bitnet_b1_58-3B/blob/af89e318d78a70802061246bf037199d2fb97020/utils_quant.py#L10
    result = (weight * iscale).round().clamp(-1, 1) / iscale
    return result.type(dtype)

def np_preprocess_reference(
    b : np.ndarray, 
    N: int, K: int, 
    g : int = 4,
    dtype : np.dtype = np.int8,
    out_dtype : np.dtype = np.float16,
):
    b_t = b
    if dtype == np.int8:
        maxv = (1 << 7) - 1
    _gamma = 1
    _states = [-1, 1]

    #> subgroup on `activation` Tensor.
    b = b.reshape(N, K // g, g)

    #> Following code is for generating LUT for preprocessing.
    codes = np.array([[i] for i in range(1 << g)], dtype=np.uint8)
    codes = np.unpackbits(codes, axis=1, bitorder="little", count=g).T

    def map_states(c):
        return _states[c]

    m = np.vectorize(map_states)(codes).astype(out_dtype)

    # (N, K // g, 1 << g)
    lut = b.dot(m)
    #> [N, K // g, 1 << g] -> [N, K // group_size, group_size // g] 
    lut_biases = lut.reshape(N, K // act_group_size, act_group_size // g, 1 << g)[:, :, :, 0]
    #> each element inside lut_biases is `minus a sum of each group_size`,
    lut_biases = np.sum(lut_biases, axis=-1) * _gamma

    # quantization
    #> [N, K // g, 1 << g] -> [N, K // act_group_size, act_group_size // g * 1 << g]
    qlut = lut.reshape(N, K // act_group_size, act_group_size // g * (1 << g))
    #> Quant each LUT (shape is [g, 1 << g]) by Tensor, so first find it maximum.
    absmax = np.max(np.abs(qlut), axis=-1)
    lut_scales = absmax / maxv

    def recp(s):
        return 1.0 / s if s != 0 else 0

    #> This is the scale for each [N, K // act_group_size].
    ils = np.vectorize(recp)(lut_scales).astype(out_dtype)
    # (N, K // act_group_size, act_group_size // g, 1 << g)
    # 这里的操作其实就是做完quant之后再再把这个给转回去。
    qlut = np.rint(
        (qlut.transpose(2, 0, 1).reshape(-1, qlut.shape[0] * qlut.shape[1]) * ils.reshape(1, qlut.shape[0] * qlut.shape[1]))
        .reshape(qlut.shape[2], qlut.shape[0], qlut.shape[1]).transpose(1, 2, 0).reshape(N, K // g, 1 << g)
    ).astype(dtype)
    
    return [b_t, lut_scales, lut_biases, qlut]

#! This Function should be change if `bits` is larger than 4.
def get_bits_alphas(bits: int):
    """
    Get Array like [0.5, 1, 2, 4] by bits.

    Args:
        bits (int): _description_

    Returns:
        _type_: _description_
    """
    alphas = [1 / 2, 1, 2, 4]
    return alphas[:bits]

def np_qgemm_reference(
    packed_qweight : np.ndarray,
    lut : np.ndarray,
    scales : np.ndarray,
    lut_scales : np.ndarray,
    m_groups: int,
    M: int, N: int, K: int,
    bm: int, _ngroups_per_elem: int, kfactor: int,
    g: int, nbits : int,
    zero_point: bool = True,
    dtype: str = "int8",
    out_dtype: str = "float16",
):
    _num_per_elem = 8
    _ngroups_per_elem = _num_per_elem // g
    alphas = get_bits_alphas(nbits)

    has_lut_scale = (dtype != out_dtype)
    
    assert qlut.dtype == "int8", "qlut should be int8"
    assert packed_qweight.dtype == "uint8", "packed_qweight should be int8"

    # TODO: rewrite
    a = packed_qweight
    # a = np.random.randint(0, 256, (M // bm, K // g // kfactor, bm // _ngroups_per_elem // simd_n_in, kfactor, simd_n_in)).astype(weight_dtype)

    import pdb; pdb.set_trace()
    
    a_t = packed_qweight.reshape(M // bm, K // g, bm // _ngroups_per_elem)

    # lut = np.random.randint(-127, 127, (N, K // g, 2 ** g)).astype(dtype)

    if m_groups == -1:
        if zero_point:
            # scales = np.random.randn(M // bm, K // group_size, bm // bits // simd_n_out, 2, simd_n_out).astype(out_dtype)
            scales_t = scales.reshape(M // bm, K // group_size, bm // bits * 2)
        else:
            # scales = np.random.randn(M // bm, K // group_size, bm // bits // simd_n_out, simd_n_out).astype(out_dtype)
            scales_t = scales.reshape(M // bm, K // group_size, bm // bits)
    else:
        # scales = np.random.randn(m_groups).astype(out_dtype)
        scales_t = scales

    if has_lut_scale:
        lut_scales = np.random.randn(N, K // act_group_size).astype(out_dtype)
        lut_biases = np.random.randn(N, K // act_group_size).astype(out_dtype)

    import pdb; pdb.set_trace()
    
    cbits = np.zeros((N, M), dtype=out_dtype)

    a = np.concatenate([(a >> (g * ng)) & ((1 << g) - 1) for ng in range(_ngroups_per_elem)], axis=-1)
    for n in range(N):
        for k in range(K // g):
            for m in range(M):
                mo = m // bm
                ko = k // kfactor
                mi = (m % bm) // _ngroups_per_elem // simd_n_in
                ki = k % kfactor
                e = (m % bm) % (_ngroups_per_elem * simd_n_in)
                a_e = a[mo, ko, mi, ki, e]

                scales_mi = (m % bm) // bits // simd_n_out
                scales_e = ((m % bm) % simd_n_out)

                if m_groups == -1:
                    if zero_point:
                        s = scales[mo, k * g // group_size, scales_mi, 0, scales_e]
                    else:
                        s = scales[mo, k * g // group_size, scales_mi, scales_e]
                else:
                    m_group_size = M // m_groups
                    s = scales[m // m_group_size]

                cbits[n, m] += lut[n, k, a_e] * lut_scales[n, k * g // act_group_size] * s
                if (((k * g) % act_group_size) == 0) and ((((m % bm) // simd_n_out) % bits) == 0):
                    cbits[n, m] += lut_biases[n, k * g // act_group_size] * s
                    if zero_point:
                        cbits[n, m] += lut_biases[n, k * g // act_group_size] * (1 / alphas[0]) * scales[mo, k * g // group_size, scales_mi, 1, scales_e]

    c = (
        cbits.reshape((N, M // simd_n_out // bits, bits, simd_n_out))
            .transpose(0, 1, 3, 2)
            .dot(np.array(alphas, dtype=out_dtype))
            .reshape((N, M // bits))
    )

    if has_lut_scale:
        return [a_t, lut, scales_t, lut_scales, lut_biases, c]
    else:
        return [a_t, lut, scales_t, c]


def preprocess_ref(
    activation: torch.Tensor,       # 输入激活张量 (M, K)
    lut_scales: torch.Tensor,       # 输出LUT缩放因子 (N, K//act_group_size)
    lut_biases: torch.Tensor,       # 输出LUT偏置 (N, K//act_group_size)
    qlut: torch.Tensor,             # 输出量化LUT (N, K//g, 1<<g)
    M: int,
    K: int,
    N: int,
    bits: int,
    g: int = 4,
    act_group_size: int = 64,
    gamma: float = 1.0,
    dtype: torch.dtype = torch.int8,
    out_dtype: torch.dtype = torch.float16
):
    assert K % act_group_size == 0, f"K({K})必须能被act_group_size({act_group_size})整除"
    assert act_group_size % 32 == 0, f"act_group_size({act_group_size})必须能被32整除"
    assert activation.shape == (M, K), f"激活张量形状应为({M}, {K}), 实际为{activation.shape}"
    
    if dtype == torch.int8:
        maxv = 127  # 对称量化最大值
    else:
        raise ValueError(f"不支持的量化类型: {dtype}")

    b = activation.to(out_dtype)  # (M, K)
    b = b.reshape(N, )
    
    import pdb; pdb.set_trace()
    
    # # 2. 生成所有可能的二进制组合
    # codes = torch.arange(1 << g, device=b.device, dtype=torch.uint8)
    # bits_mask = (codes.view(-1, 1) >> torch.arange(g, device=b.device)) & 1  # (2^g, g)
    # m = bits_mask.to(out_dtype) * 2 - 1  # 映射到[-1, 1], (2^g, g)

    # # 3. 计算LUT
    # # 分组处理激活 (K//ag, ag, M)
    # b_grouped = b.view(K // act_group_size, act_group_size, M)
    # # 矩阵乘法计算LUT (K//ag, M, 2^g)
    # lut = torch.matmul(b_grouped, m.T)  # shape: (K//ag, M, 2^g)

    # # 4. 计算LUT偏置
    # lut_biases_group = lut[..., 0]  # 取第一个元素的偏置
    # lut_biases_total = lut_biases_group.sum(dim=1) * gamma  # (K//ag, M)
    # # 转置并复制到输出张量
    # lut_biases.copy_(lut_biases_total.T.contiguous())  # (N, K//ag)

    # # 5. 计算量化缩放因子
    # qlut_flat = lut.view(K//act_group_size, -1)  # (K//ag, M*2^g)
    # absmax, _ = torch.max(qlut_flat.abs(), dim=1)
    # scale = absmax / maxv
    # # 扩展维度并复制
    # lut_scales.copy_(scale.unsqueeze(1).expand(-1, M).T.contiguous())  # (N, K//ag)

    # # 6. 量化LUT
    # ils = torch.where(scale != 0, 1.0 / scale, torch.zeros_like(scale))
    # qlut_flat = (qlut_flat * ils.unsqueeze(1)).round().to(dtype)
    # # 调整维度顺序并复制到输出
    # qlut.copy_(qlut_flat.view(K//g, N, 1<<g).permute(1,0,2).contiguous())  # (N, K//g, 2^g)

    # # 返回转置后的基矩阵用于验证
    # return b.T  # 返回形状(N, K)的原始基矩阵

if __name__ == '__main__':
    # 测试参数配置
    torch.manual_seed(42)

    kfactor = 16
    bm = 256
    simd_n_in = 16
    simd_n_out = 8
    kfactor = 16
    group_size = 128
    lut_scales_size = 64
    scales_size = 131072
    n_tile_num = 32
    M, K, N = 4096, 4096, 1
    bits = 2    # num of bits.
    
    act_group_size = 128
    m_group = -1
    
    g = 4       # 4 is LUT group.
    device = "cpu"
    print(f"Running test on {device.upper()}")

    # activation = torch.randn(N, K, dtype=torch.float16, device=device)
    # weight_fp16 = torch.randn(M, K, dtype=torch.float16, device=device)

    activation = torch.ones(N, K, dtype=torch.float16, device=device)
    weight_fp16 = torch.ones(M, K, dtype=torch.float16, device=device)

    # 预分配LUT相关张量
    lut_scales = torch.zeros(N, K//act_group_size, dtype=torch.float16, device=device)
    lut_biases = torch.zeros_like(lut_scales)
    qlut = torch.zeros(N, K//g, 1<<g, dtype=torch.int8, device=device)

    #> act_t should same as `activation`.
    act_t, lut_scales, lut_biases, qlut = np_preprocess_reference(
        activation.cpu().numpy(), 
        N=N, K=K, g=g
    )

    # TODO: Just for test. NO group_wise quantization.
    pesudo_qweight = weight_quant(weight_fp16)
    scale = np.max(np.abs(pesudo_qweight.numpy()))
    weight_qvals = np.round(pesudo_qweight / scale + 2).numpy().astype(np.uint8)   
    #> This is OK, just set this just` single value. `

    packed_qweight, scales = preprocess_weights(
        weight_qvals, 
        scale,
        None,
        bits=bits, g=g, bm=bm, kfactor=kfactor
    )

    import pdb; pdb.set_trace()
    
    C = np_qgemm_reference(
        packed_qweight,
        qlut,
        scales,
        lut_scales,
        m_groups=m_group,
        M=M, N=N, K=K,
        g=g, nbits=bits,
        zero_point=True,
    )

    # # 执行LUT预处理
    # b_t = preprocess_ref(
    #     activation=activation,
    #     lut_scales=lut_scales,
    #     lut_biases=lut_biases,
    #     qlut=qlut,
    #     M=M,
    #     K=K,
    #     N=N,
    #     bits=bits,
    #     g=g,
    #     act_group_size=act_group_size,
    #     gamma=1.0,
    #     dtype=torch.int8,
    #     out_dtype=torch.float16
    # )



    import pdb; pdb.set_trace()

    
