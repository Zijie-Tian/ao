import torch
import torch.nn as nn
from torchao import quantize_

# 1. quantize with some predefined `apply_tensor_subclass` method that corresponds to
# optimized execution paths or kernels (e.g. int4 tinygemm kernel)
# also customizable with arguments
# currently options are
# int8_dynamic_activation_int4_weight (for executorch)
# int8_dynamic_activation_int8_weight (optimized with int8 mm op and torch.compile)
# int4_weight_only (optimized with int4 tinygemm kernel and torch.compile)
# int8_weight_only (optimized with int8 mm op and torch.compile


# quantize_(m, int4_weight_only(group_size=32))
# print("After quantizing: ", m)

# 2. write your own new apply_tensor_subclass
# You can also add your own apply_tensor_subclass by manually calling tensor subclass constructor
# on weight

#> this to_affine_quantized_intx is the core function in int4_weight_only
from torchao.dtypes import to_affine_quantized_intx
from torchao.quantization.quant_primitives import MappingType, ZeroPointDomain

# weight only uint4 asymmetric groupwise quantization
groupsize = 32
# (1, groupsize) is the block_size, where 1 is 1 axis for matrix, along which the quantization is applied.
apply_weight_quant = lambda x: to_affine_quantized_intx(
    x, MappingType.ASYMMETRIC, 
    (1, groupsize), torch.int32, 0, 15, 1e-6,
    scale_dtype=torch.float32,
    zero_point_dtype=torch.float32, 
    preserve_zero=False, 
    zero_point_domain=ZeroPointDomain.FLOAT,
    use_hqq=False)

#> This is replace_function
def apply_weight_quant_to_linear(linear):
    linear.weight = torch.nn.Parameter(apply_weight_quant(linear.weight), requires_grad=False)
    return linear

# apply to modules under block0 submodule
def filter_fn(module: nn.Module, fqn: str) -> bool:
    return isinstance(module, nn.Linear)

m = nn.Sequential(nn.Linear(32, 1024), nn.Linear(1024, 32))

# Set random values for all parameters in the model
with torch.no_grad():
    # First linear layer
    m[0].weight.random_(0, 10)  # Random integers between 0 and 9
    m[0].bias.random_(0, 10)
    
    # Second linear layer
    m[1].weight.random_(0, 10)
    m[1].bias.random_(0, 10)

quantize_(m, apply_weight_quant_to_linear, filter_fn)

m_1_data, m_1_scale, m_1_zero_point = m[1].weight.tensor_impl.get_plain()
print("m_1_data: ", m_1_data.shape)
print("m_1_scale: ", m_1_scale.shape)
print("m_1_zero_point: ", m_1_zero_point.shape)
