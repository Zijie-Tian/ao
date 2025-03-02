import torch
import numpy as np
from utils_quant import BitLinear, BitLinearTMAC

import torchao
from torchao.quantization.utils import compute_error
from torchao.experimental.quant_api import (
    _TMACWeightQuantizedLinearFallback
)

if __name__ == "__main__":
    # Test BitLinear
    weight = torch.rand(3200, 3200).to(torch.float16)
    input_data = torch.rand(1, 3200).to(torch.float16)
    
    # weight = torch.tensor(np.load("weight.npy")).to(torch.float16)
    # input_data = torch.tensor(np.load("activation.npy")).to(torch.float16)
    bitlinear = BitLinear(3200, 3200, weight_bits=2, input_bits=16)
    bitlinear.weight.data = weight

    output_data = bitlinear(input_data)

    with torch.no_grad():
        # Set the weight to a known value for testing
        real_ref = input_data @ bitlinear.weight.T

    algo_sqnr = compute_error(
        output_data, real_ref
    )

    tmac_bitlinear = BitLinearTMAC(3200, 3200, weight_bits=2)
    tmac_bitlinear.set_weight(weight)

    tmac_out = tmac_bitlinear(input_data)
    
    reference_impl = _TMACWeightQuantizedLinearFallback(
        nbits=tmac_bitlinear.op_config.bits, 
        group_size=tmac_bitlinear.op_config.group_size
    )
    reference_impl.quantize_and_pack_weights(
        weight, tmac_bitlinear.op_config.group_size
    )
    pesudo_ref = reference_impl(input_data.to(torch.float32))

    compute_sqnr = compute_error(
        tmac_out, pesudo_ref 
    )
    
    print("Real reference output:", real_ref)
    print("BitLinear result:", output_data)
    print("Pesudo result : ", pesudo_ref)
    print("TMAC result:", tmac_out)
    print("Algorithm SQNR:", algo_sqnr)
    print("Compute SQNR:", compute_sqnr)
    print("Compare with BitLinear:", compute_error(output_data, tmac_out))

    import pdb; pdb.set_trace()

