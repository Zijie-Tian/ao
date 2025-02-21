import numpy as np 
import sys
sys.path.append("../")


from t_mac.ops import QGeMMLUTBitsCodegen, QGeMMLUTBitsPreprocessorCodegen
from t_mac.utils import get_default_device_kwargs, get_devices
from t_mac.model_utils import get_preset_models, extract_kernel_shapes, get_quantization_config

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

def preprocess_ref(M, N, K):
    g = 4
    _states = [-1, 1]
    _gamma = 1
    out_dtype = "float16"
    act_group_size = 64
    maxv = (1 << 7) - 1
    dtype = "int8"
    
    b = np.random.randn(N, K).astype(out_dtype)
    b_t = b

    b = b.reshape(N, K // g, g)

    codes = np.array([[i] for i in range(1 << g)], dtype=np.uint8)
    codes = np.unpackbits(codes, axis=1, bitorder="little", count=g).T

    def map_states(c):
        return _states[c]

    m = np.vectorize(map_states)(codes).astype(out_dtype)

    # (N, K // g, 1 << g)
    lut = b.dot(m)
    
    import pdb; pdb.set_trace()
    
    #> get ` - sum(sub_group) `
    lut_biases = lut.reshape(N, K // act_group_size, act_group_size // g, 1 << g)[:, :, :, 0]
    lut_biases = np.sum(lut_biases, axis=-1) * _gamma

    # quantization
    qlut = lut.reshape(N, K // act_group_size, act_group_size // g * (1 << g))
    absmax = np.max(np.abs(qlut), axis=-1)
    lut_scales = absmax / maxv

    def recp(s):
        return 1.0 / s if s != 0 else 0

    ils = np.vectorize(recp)(lut_scales).astype(out_dtype)
    qlut = np.rint(
        (qlut.transpose(2, 0, 1).reshape(-1, qlut.shape[0] * qlut.shape[1]) * ils.reshape(1, qlut.shape[0] * qlut.shape[1]))
        .reshape(qlut.shape[2], qlut.shape[0], qlut.shape[1]).transpose(1, 2, 0).reshape(N, K // g, 1 << g)
    ).astype(dtype)

    return [b_t, lut_scales, lut_biases, qlut]


def qgemm_lut(M, N, K):
    g = 4
    _states = [-1, 1]
    _gamma = 1
    out_dtype = "float16"
    act_group_size = 64
    maxv = (1 << 7) - 1
    dtype = "int8"
    
    # _ngroups_per_elem = 8
    # simd_n_in = 4
    bm = 16
    kfactor = 4
    
    # TODO: rewrite
    a = np.random.randint(0, 256, (M // bm, K // g // kfactor, bm // _ngroups_per_elem // simd_n_in, kfactor, simd_n_in)).astype(weight_dtype)
    a_t = a.reshape(M // bm, K // g, bm // _ngroups_per_elem)

    lut = np.random.randint(-127, 127, (N, K // g, 2 ** g)).astype(dtype)

    if m_groups == -1:
        if zero_point:
            scales = np.random.randn(M // bm, K // group_size, bm // bits // simd_n_out, 2, simd_n_out).astype(out_dtype)
            scales_t = scales.reshape(M // bm, K // group_size, bm // bits * 2)
        else:
            scales = np.random.randn(M // bm, K // group_size, bm // bits // simd_n_out, simd_n_out).astype(out_dtype)
            scales_t = scales.reshape(M // bm, K // group_size, bm // bits)
    else:
        scales = np.random.randn(m_groups).astype(out_dtype)
        scales_t = scales

    if has_lut_scale:
        lut_scales = np.random.randn(N, K // act_group_size).astype(out_dtype)
        lut_biases = np.random.randn(N, K // act_group_size).astype(out_dtype)

    cbits = np.zeros((N, M), dtype=out_dtype)

    a = np.concatenate([(a >> (g * ng)) & ((1 << g) - 1) for ng in range(_ngroups_per_elem)], axis=-1)
    #> Directly iterator over the indices
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


if __name__ == '__main__':
    b_t, lut_scales, lut_biases, qlut = preprocess_ref(4096, 1, 4096)
    
    
    
    
    # codegen_kwargs = {
    #     "dtype": "int8",
    #     "target": "llvm -mtriple=arm64-apple-darwin23.1.0 -mcpu=apple-m2",
    #     "save_dir": "out",
    #     "verify": False,
    #     "target_host": None,
    #     "tune": True,
    #     "reuse_tuned": False,
    #     "remote_kwargs": None,
    #     "cc": None,
    #     "cc_opts": ["-O3", "-std=c++17", "-mcpu=apple-m2", "-mllvm", "-inline-threshold=10000"] + get_osx_isysroot(),
    #     "out_dtype": "float16",
    #     "act_group_size": 64,
    #     "num_threads": 4,
    # }
    
    
    # qgemm_lut = QGeMMLUTBitsCodegen(
    #     name="qgemm_lut", 
    #     group_size=128, 
    #     m_groups=-1, 
    #     fast_aggregation=False,
    #     bits=2,
    #     aggregation_dtype="int32", 
    #     zero_point=False, 
    #     **codegen_kwargs
    # )
    # preprocessor = QGeMMLUTBitsPreprocessorCodegen(
    #     name="preprocessor",
    #     bits=2,
    #     **codegen_kwargs,
    # )

    
    # import pdb; pdb.set_trace()

