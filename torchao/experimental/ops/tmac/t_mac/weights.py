import torch
import numpy as np
from typing import Tuple, Optional


def preprocess_weights(
    w: np.ndarray,
    scales: np.ndarray,
    zeros: Optional[np.ndarray] = None,
    bits: int = 4,
    g: int = 4,
    bm: int = 512,
    kfactor: int = 16,
    simd_n_in: int = 16,
    simd_n_out: int = 8,
) -> Tuple[np.ndarray, np.ndarray]:
    """Offline preprocess the weights before inference.

    Parameters
    ----------
    w : np.ndarray
        Quantized weights of shape (M, K) and type "uint8".
        Add a bias of 2^(bits-1) to the original int1/2/3/4 values to convert it to uint values.
        E.g., add a bias of 2 to int2: -2, -1, 0, 1 -> 0, 1, 2, 3
    scales: np.ndarray
        Quantization scales of shape (M, K // group_size) or (m_groups,) and type float32/16.
    zeros: np.ndarray
        Same shape and type with scales.
        If None, the actual zero points will be 2^(bits-1) * scales;
        if not None, the actual zero points will be zeros + 2^(bits-1) * scales.
        E.g., before passing the zeros from BitDistiller/GPTQ, you need to modify it as following:
        `zeros = (zeros - (2 ** (bits - 1))) * scales`
    bits: int
        Number of bits for each quantized element
    g: int
        Group size of LUT
    bm: int
        Tuned tiling size of M
    kfactor: int
        Tuned tiling size of K
    simd_width: int
        128 for ARM NEON

    Returns
    -------
    w: np.ndarray
        Permuted weights
    scales: np.ndarray
        Permuted scales
    """
    assert(w.dtype == "uint8")

    M, K = w.shape
    M = M * bits
    ngroups_per_elem = 8 // g

    #! (M // bits, K, bits)
    w = np.stack([(w >> ib) & 1 for ib in range(bits)], axis=-1)
    # (M // bits, K, bits) -> (M // bits, bits, K) -> (M // bits, bits, K // g, g)
    w = w.transpose(0, 2, 1).reshape(M // bits, bits, K // g, g)
    w = sum([(w[:, :, :, ig] << ig) for ig in range(g)])    #! After this, each element will containes one group. 
    # 0, 16, 1, 17, 2, 18, 3, 19, 4, 20, 5, 21, 6, 22, 7, 23, 8, 24, 9, 25, 10, 26, 11, 27, 12, 28, 13, 29, 14, 30, 15, 31
    # for bits=3
    # bit0: [0, 8), bit1: [8, 16), bit2: [16, 24), bit0: [24, 32)
    # (M // bits // simd_n_float16, bits, simd_n_float16, K // g)
    w = w.reshape(M // bits // simd_n_out, simd_n_out, bits, K // g).transpose(0, 2, 1, 3)
    mgroup = ngroups_per_elem * simd_n_in
    w = w.reshape(M // mgroup, ngroups_per_elem, simd_n_in, K // g).transpose(0, 2, 1, 3)
    #             0        1             2          3                 4                  5
    w = w.reshape(M // bm, bm // mgroup, simd_n_in, ngroups_per_elem, K // g // kfactor, kfactor).transpose(0, 4, 1, 5, 2, 3)
    # w shape = (M // bm, K // g // kfactor, bm // mgroup, kfactor, simd_n_in, ngroups_per_elem)
    w = sum([(w[:, :, :, :, :, ng] << (ng * g)) for ng in range(ngroups_per_elem)])
    w = w.reshape(M // bm, K // g // kfactor, bm // mgroup, kfactor, simd_n_in)
    # input size of current TVM API
    w = w.reshape(M // bm, K // g, bm // ngroups_per_elem)

    if scales.size >= M // bits:
        group_size = K // scales.shape[1]
        scales = scales.reshape(M // bm, bm // bits, K // group_size).transpose(0, 2, 1)
        scales = scales.reshape(M // bm, K // group_size, bm // bits // simd_n_out, simd_n_out)
        if zeros is not None:
            zeros = zeros.reshape(M // bm, bm // bits, K // group_size).transpose(0, 2, 1)
            zeros = zeros.reshape(M // bm, K // group_size, bm // bits // simd_n_out, simd_n_out)
            scales = np.stack([scales, zeros], axis=-2)
        # input size of current TVM API
        scales = scales.reshape(M // bm, K // group_size, -1)
    else:
        if zeros is not None:
            scales = np.concatenate([scales, zeros])
    return w, scales


def preprocess_weights_torch(
    w: torch.Tensor,
    scales: torch.Tensor,
    zeros: Optional[torch.Tensor] = None,
    bits: int = 4,
    g: int = 4,
    bm: int = 512,
    kfactor: int = 16,
    simd_n_in: int = 16,
    simd_n_out: int = 8,
) -> Tuple[torch.Tensor, torch.Tensor]:
    assert w.dtype == torch.uint8, "Weights must be uint8 type"

    M_orig, K = w.shape
    M = M_orig * bits
    ngroups_per_elem = 8 // g

    # Extract bits and transpose
    w_bits = [(w >> ib) & 1 for ib in range(bits)]
    w = torch.stack(w_bits, dim=-1)  # (M_orig, K, bits)
    w = w.permute(0, 2, 1)  # (M_orig, bits, K)
    w = w.reshape(M_orig, bits, K // g, g)

    # Group-wise bit shifting and summation
    w = sum([w[:, :, :, ig] << ig for ig in range(g)])

    # Reshape and permutation operations
    # Match NumPy's reshape/transpose sequence exactly
    w = w.reshape(M // bits // simd_n_out, simd_n_out, bits, K // g)
    w = w.permute(0, 2, 1, 3)  # (M//bits//so, bits, so, K//g)

    mgroup = ngroups_per_elem * simd_n_in
    w = w.reshape(M // mgroup, ngroups_per_elem, simd_n_in, K // g)
    w = w.permute(0, 2, 1, 3)  # (M//mg, sin, ngpe, K//g)

    # Final transformations with exact NumPy equivalent operations
    w = w.reshape(
        M // bm, bm // mgroup, simd_n_in, ngroups_per_elem,
        K // g // kfactor, kfactor
    ).permute(0, 4, 1, 5, 2, 3)  # Match NumPy's transpose order
    
    w = sum([w[..., ng] << (ng * g) for ng in range(ngroups_per_elem)])
    w = w.reshape(M // bm, K // g // kfactor, bm // mgroup, kfactor, simd_n_in)
    w = w.reshape(M // bm, K // g, bm // ngroups_per_elem)

    # Process scales and zeros
    if scales.numel() >= M_orig:
        group_size = K // scales.shape[1]
        scales = scales.reshape(M_orig, -1, K // group_size)
        scales = scales.reshape(M // bm, bm // bits, K // group_size)
        scales = scales.permute(0, 2, 1)
        scales = scales.reshape(M // bm, K // group_size, -1, simd_n_out)
        
        if zeros is not None:
            zeros = zeros.reshape(M // bm, bm // bits, K // group_size)
            zeros = zeros.permute(0, 2, 1)
            zeros = zeros.reshape(M // bm, K // group_size, -1, simd_n_out)
            scales = torch.stack([scales, zeros], dim=-2)
        
        scales = scales.reshape(M // bm, K // group_size, -1)
    else:
        if zeros is not None:
            scales = torch.cat([scales, zeros], dim=0)

    return w, scales

if __name__ == "__main__":
    # np.random.seed(42)
    # torch.manual_seed(42)
    
    # 生成测试数据
    M, K = 3200, 3200
    bits = 4
    group_size = 128
    w_np = np.random.randint(0, 16, size=(M, K), dtype="uint8")
    scales_np = np.abs(np.random.randn(M, K // group_size).astype("float16"))
    zeros_np = (np.random.randn(M, K // group_size).astype("float16") - (2 ** (bits - 1))) * scales_np
    
    # 转换为PyTorch张量
    w_torch = torch.from_numpy(w_np.copy())
    scales_torch = torch.from_numpy(scales_np.copy())
    zeros_torch = torch.from_numpy(zeros_np.copy())
    
    # 调用两个版本的预处理
    w_np_proc, scales_np_proc = preprocess_weights(
        w_np, scales_np, zeros_np,
        bits=4, g=4, bm=512, kfactor=16
    )
    w_torch_proc, scales_torch_proc = preprocess_weights_torch(
        w_torch, scales_torch, zeros_torch,
        bits=4, g=4, bm=512, kfactor=16
    )
    
    # 比较结果
    np.testing.assert_allclose(
        w_np_proc, w_torch_proc.numpy(),
        atol=1e-5, rtol=1e-3,
        err_msg="权重预处理结果不一致"
    )
    np.testing.assert_allclose(
        scales_np_proc, scales_torch_proc.numpy(),
        atol=1e-5, rtol=1e-3,
        err_msg="缩放因子预处理结果不一致"
    )
