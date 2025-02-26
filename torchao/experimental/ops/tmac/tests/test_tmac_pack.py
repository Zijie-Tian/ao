import sys
import os
current_dir = os.path.dirname(os.path.abspath(__file__))
sys.path.append(current_dir + "/../")

import torch
import numpy as np

from t_mac.weights import preprocess_weights, preprocess_weights_torch

def print_binary(array):
    # np.set_printoptions(threshold=np.inf)  # 不省略任何元素
    binary_array = np.vectorize(lambda x: format(x if x >= 0 else (1 << 8) + x, '08b'))(array)
    print(binary_array)

if __name__ == "__main__":
    M = 64
    N = 1
    K = 64
    g = 2       # 这个是最小 LUT 的一个大小。
    bits = 4
    kfactor = 16
    bm = 64
    simd_n_in = 16
    simd_n_out = 8
    
    M = M * bits
    ngroups_per_elem = 8 // g
    
    # w = np.arange(16).astype(np.uint8).reshape(4, 4)
    w = np.tile(np.arange(16), M // bits * K // 16).reshape(M // bits, K)
    
    # print_binary(w)
    
    w = np.stack([(w >> ib) & 1 for ib in range(bits)], axis=-1)
    #> w.tranaspose(0, 2, 1)的最内部是其中每一行元素的第b位。
    #> 因此，组织完成之后，最内部按照 g = 2 进行排布。
    w = w.transpose(0, 2, 1).reshape(M // bits, bits, K // g, g)
    
    #> 进行这样的变换之后，其中最内部的数字也就变成了对于相同行内部的第g位。
    w = sum([(w[:, :, :, ig] << ig) for ig in range(g)])
    print(w)

    import pdb; pdb.set_trace()
    #! 这里要求M的值一定要高于 simd_n_out。
    w = w.reshape(M // bits // simd_n_out, simd_n_out, bits, K // g).transpose(0, 2, 1, 3)
    mgroup = ngroups_per_elem * simd_n_in
    w = w.reshape(M // mgroup, ngroups_per_elem, simd_n_in, K // g).transpose(0, 2, 1, 3)
    
    
    import pdb; pdb.set_trace()
    w = w.reshape(M // bm, bm // mgroup, simd_n_in, ngroups_per_elem, K // g // kfactor, kfactor).transpose(0, 4, 1, 5, 2, 3)
    w = sum([(w[:, :, :, :, :, ng] << (ng * g)) for ng in range(ngroups_per_elem)])
    import pdb; pdb.set_trace()
    
    
    # >>>>>>>>>>>>>>>>>>>>>> Following code is for test >>>>>>>>>>>>>>>>>>>>>>>>
    # for i in range(100):
    #     np.random.seed(i)
    #     torch.manual_seed(i)
        
    #     # 生成测试数据
    #     M, K = 3200, 3200
    #     bits = 4
    #     group_size = 128
    #     w_np = np.random.randint(0, 16, size=(M, K), dtype="uint8")
    #     scales_np = np.abs(np.random.randn(M, K // group_size).astype("float16"))
    #     zeros_np = (np.random.randn(M, K // group_size).astype("float16") - (2 ** (bits - 1))) * scales_np
        
    #     # 转换为PyTorch张量
    #     w_torch = torch.from_numpy(w_np.copy())
    #     scales_torch = torch.from_numpy(scales_np.copy())
    #     zeros_torch = torch.from_numpy(zeros_np.copy())
        
    #     # 调用两个版本的预处理
    #     w_np_proc, scales_np_proc = preprocess_weights(
    #         w_np, scales_np, zeros_np,
    #         bits=4, g=4, bm=512, kfactor=16
    #     )
    #     w_torch_proc, scales_torch_proc = preprocess_weights_torch(
    #         w_torch, scales_torch, zeros_torch,
    #         bits=4, g=4, bm=512, kfactor=16
    #     )
        
    #     # 比较结果
    #     np.testing.assert_allclose(
    #         w_np_proc, w_torch_proc.numpy(),
    #         atol=1e-5, rtol=1e-3,
    #         err_msg="权重预处理结果不一致"
    #     )
    #     np.testing.assert_allclose(
    #         scales_np_proc, scales_torch_proc.numpy(),
    #         atol=1e-5, rtol=1e-3,
    #         err_msg="缩放因子预处理结果不一致"
    #     )