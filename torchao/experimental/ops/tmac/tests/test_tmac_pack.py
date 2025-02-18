import sys
import os
current_dir = os.path.dirname(os.path.abspath(__file__))
sys.path.append(current_dir + "/../")

import torch
import numpy as np

from t_mac.weights import preprocess_weights, preprocess_weights_torch

if __name__ == "__main__":
    for i in range(100):
        np.random.seed(i)
        torch.manual_seed(i)
        
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