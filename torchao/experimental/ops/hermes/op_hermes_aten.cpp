#include <torch/extension.h>


bool is_tensor_empty(const torch::Tensor& tensor) {
    return tensor.numel() == 0;
}

// 定义 MPS 计算函数
torch::Tensor mps_forward(const torch::Tensor& weight, const torch::Tensor& input) {
    // 检查输入是否有效
    TORCH_CHECK(input.dim() == 2, "Input must be a 2D tensor (vector)");
    TORCH_CHECK(!is_tensor_empty(weight), "Weight must not be empty");
    TORCH_CHECK(input.size(0) == weight.size(1), "Input and weight dimensions do not match");

    // 初始化结果为输入向量
    torch::Tensor result = torch::empty({weight.size(0), input.size(1)}, input.options());

    TORCH_CHECK(weight.dim() == 2, "Each weight must be a 2D tensor");
    TORCH_CHECK(weight.size(1) == input.size(0), "weight and vector dimensions do not match");

    result = torch::matmul(weight, input);

    return result;
}

TORCH_LIBRARY_FRAGMENT(torchao, m) {
    m.def("mps_forward(Tensor weight, Tensor input) -> Tensor");
}

TORCH_LIBRARY_IMPL(torchao, CPU, m) {
    m.impl("mps_forward", &mps_forward);
}

TORCH_LIBRARY_IMPL(torchao, MPS, m) {
    m.impl("mps_forward", &mps_forward);
}

// // 绑定到 Python
// PYBIND11_MODULE(TORCH_EXTENSION_NAME, m) {
//     m.def("mps_forward", &mps_forward, "MPS forward pass using GeMV");
// }