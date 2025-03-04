# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

import logging
from typing import Optional, Union

import torch
import torch.nn as nn
from torch.ao.quantization.fx._decomposed import (
    dequantize_per_channel_group,
    quantize_per_channel_group,
)

from torchao.quantization.granularity import (
    PerGroup,
    PerRow,
)

logger = logging.getLogger(__name__)
logger.setLevel(logging.WARNING)

import sys

handler = logging.StreamHandler(sys.stdout)
formatter = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")
handler.setFormatter(formatter)
logger.addHandler(handler)

import platform
if platform.system() == "Linux":
    __all__ = [
        "_quantize",
        "TMAC_CONFIG_PATH",
        "TMACConfig",
        "load_tmac_config_ini",
        "find_tmac_config",
        "pack_tmac_weight",
        "weight_quant",
        "weight_dequant",
        "Int8DynActIntxWeightLinearQuantizer", 
        "IntxWeightEmbeddingQuantizer"
    ]
else:
    pass


def _quantize(
    vals: torch.Tensor, group_size: int, nbit: int, has_weight_zeros: bool, signed=True
):
    assert nbit >= 1 and nbit <= 8
    if signed:
        qmin = -(1 << (nbit - 1))
        qmax = (1 << (nbit - 1)) - 1
    else:
        qmin = 0
        qmax = (1 << nbit) - 1

    n, k = vals.shape
    vals = vals.reshape(-1, group_size)
    vmins, _ = torch.min(vals, axis=1)
    vmaxs, _ = torch.max(vals, axis=1)
    group_scales = (vmaxs - vmins) / (qmax - qmin)

    if not has_weight_zeros:
        group_zeros = torch.zeros_like(group_scales)
    else:
        group_zeros = qmin - torch.round(vmins / group_scales)

    vals = vals.reshape(n, k)
    group_scales = group_scales.reshape(n, -1)
    group_zeros = group_zeros.reshape(n, -1)

    group_qvals = quantize_per_channel_group(
        input=vals,
        scales=group_scales,
        zero_points=group_zeros,
        quant_min=qmin,
        quant_max=qmax,
        dtype=torch.int8 if signed else torch.uint8,
        group_size=group_size,
    )

    if not has_weight_zeros:
        group_zeros = None

    return group_qvals, group_scales, group_zeros


class _Int8DynActIntxWeightQuantizedLinearNative(nn.Module):
    def __init__(
        self,
        pack_weight_op,
        linear_op,
    ):
        super().__init__()
        self._pack_weights_op = pack_weight_op
        self._linear_op = linear_op

    def quantize_and_pack_weights(self, weights, nbit, group_size, has_weight_zeros):
        self.nbit = nbit
        self.group_size = group_size
        self.has_weight_zeros = has_weight_zeros

        n, k = weights.shape

        # TODO(T200095131): convert self.n, self.k, self.group_size to
        # int when supported by AOTI
        # AOTI does not allow a tensor of size (n, 0), so we do (0, n)
        self._n = torch.empty(0, n, dtype=torch.int8)
        self._k = torch.empty(0, k, dtype=torch.int8)
        self._group_size = torch.empty(0, group_size, dtype=torch.int8)

        weight_qvals, weight_scales, weight_zeros = _quantize(
            weights, self.group_size, self.nbit, self.has_weight_zeros
        )
        if self.has_weight_zeros:
            self.packed_weights = self._pack_weights_op(
                weight_qvals,
                weight_scales.reshape(-1),
                weight_zeros.to(torch.int8).reshape(-1),
                self._group_size,
            )
        else:
            self.packed_weights = self._pack_weights_op(
                weight_qvals, weight_scales.reshape(-1), self._group_size
            )

    def forward(self, x):
        assert x.dim() >= 2
        if x.dim() == 2:
            return self._linear_op(
                x,
                self.packed_weights,
                self._group_size,
                self._n,
                self._k,
            )

        assert x.dim() >= 3
        lead_shape = x.shape[0:-2]
        m, k = x.shape[-2], x.shape[-1]
        n = self._n.shape[1]
        res = self._linear_op(
            x.reshape(-1, k), self.packed_weights, self._group_size, self._n, self._k
        )
        res = res.reshape(*lead_shape, m, n)
        return res


# Python-based reference implementation of Int8DynActLowbitWeightQuantizedLinear
# It is arithmetically equivalent to Int8DynActLowbitWeightQuantizedLinear
# This is used to test Int8DynActLowbitWeightQuantizedLinear, and as a fallback when
# Int8DynActLowbitWeightQuantizedLinear is not available
class _Int8DynActIntxWeightQuantizedLinearFallback(nn.Module):
    def __init__(self):
        super().__init__()

    def quantize_and_pack_weights(self, weights, nbit, group_size, has_weight_zeros):
        self.nbit = nbit
        self.group_size = group_size
        self.has_weight_zeros = has_weight_zeros

        self._n, self._k = weights.shape
        assert self._k % group_size == 0, "group_size must divide k"

        self.weight_qvals, self.weight_scales, self.weight_zeros = _quantize(
            weights, self.group_size, self.nbit, self.has_weight_zeros
        )

    def _forward_2d(self, x):
        assert x.dim() == 2

        _, k = self._n, self._k
        m, k_ = x.shape
        assert k_ == k

        weights_dequantized = dequantize_per_channel_group(
            w_int8=self.weight_qvals,
            scales=self.weight_scales,
            zero_points=(
                self.weight_zeros
                if self.has_weight_zeros
                else torch.zeros_like(self.weight_scales)
            ),
            quant_min=None,  # TODO: why is this an arg for this function
            quant_max=None,  # TODO: why is this an arg for this function
            dtype=None,  # TODO: why is this an arg for this function
            group_size=self.group_size,
            output_dtype=torch.float32,
        )

        activation_qvals, activation_scales, activation_zeros = _quantize(
            x, group_size=k, nbit=8, has_weight_zeros=True
        )
        activations_dequantized = dequantize_per_channel_group(
            w_int8=activation_qvals,
            scales=activation_scales,
            zero_points=activation_zeros,
            quant_min=None,  # TODO: why is this an arg for this function
            quant_max=None,  # TODO: why is this an arg for this function
            dtype=None,  # TODO: why is this an arg for this function
            group_size=k,
            output_dtype=torch.float32,
        )

        res = torch.matmul(activations_dequantized, weights_dequantized.transpose(1, 0))
        return res

    def forward(self, x):
        assert x.dim() >= 2
        if x.dim() == 2:
            return self._forward_2d(x)

        assert x.dim() >= 3
        lead_shape = x.shape[0:-2]
        m, k = x.shape[-2], x.shape[-1]
        n = self._n
        x = x.reshape(-1, m, k)

        res = [self._forward_2d(x[i, :, :]) for i in range(x.shape[0])]
        res = torch.stack(res)
        res = res.reshape(*lead_shape, m, n)
        return res


def _maybe_get_quantized_linear_native(nbit, has_weight_zeros):
    try:
        if nbit in [1, 2, 3, 4, 5, 6, 7, 8]:
            wzp_suffix = "" if has_weight_zeros else "0zp"
            return _Int8DynActIntxWeightQuantizedLinearNative(
                pack_weight_op=getattr(
                    torch.ops.torchao,
                    f"_pack_8bit_act_{nbit}bit{wzp_suffix}_weight",
                ),
                linear_op=getattr(
                    torch.ops.torchao, f"_linear_8bit_act_{nbit}bit{wzp_suffix}_weight"
                ),
            )
        else:
            logger.warning(
                f"_Int8DynActIntxWeightQuantizedLinearNative does not support: nbit={nbit}, has_weight_zeros={has_weight_zeros}."
            )
    except Exception as e:
        logger.warning(
            f"_Int8DynActIntxWeightQuantizedLinearNative raised an exception during initialization: {e}"
        )

    logger.warning(
        "Falling back to **slow** implementation _Int8DynActIntxWeightQuantizedLinearFallback."
    )
    return _Int8DynActIntxWeightQuantizedLinearFallback()


def _replace_linear_with_quantized_linear(module: nn.Module, kwargs={}):
    group_size = kwargs["group_size"]
    nbit = kwargs["nbit"]
    has_weight_zeros = kwargs["has_weight_zeros"]

    assert not isinstance(module, nn.Linear)
    assert nbit >= 1 and nbit <= 8

    for name, child in module.named_children():
        if not isinstance(child, nn.Linear):
            _replace_linear_with_quantized_linear(child, kwargs)
        else:
            assert child.bias is None
            qlinear = _maybe_get_quantized_linear_native(
                nbit=nbit, has_weight_zeros=has_weight_zeros
            )
            try:
                # The packing function may raise some error from the C++ layer (e.g., if group_size is unsupported)
                # so calling quantize_and_pack_weights can fail.  In this case, we still switch to fallback
                # implementation
                setattr(module, name, qlinear)
                getattr(module, name).quantize_and_pack_weights(
                    child.weight, nbit, group_size, has_weight_zeros
                )
            except Exception as e:
                if not isinstance(qlinear, _Int8DynActIntxWeightQuantizedLinearNative):
                    raise e
                logger.warning(
                    f"_Int8DynActIntxWeightQuantizedLinearNative raised an exception during quantize_and_pack_weights: {e}\n"
                    + "Falling back to **slow** implementation _Int8DynActIntxWeightQuantizedLinearFallback."
                )
                qlinear = _Int8DynActIntxWeightQuantizedLinearFallback()
                setattr(module, name, qlinear)
                getattr(module, name).quantize_and_pack_weights(
                    child.weight, nbit, group_size, has_weight_zeros
                )


class Int8DynActIntxWeightLinearQuantizer:
    def __init__(
        self,
        device,
        precision,
        *,
        bitwidth: Optional[int] = None,
        groupsize: Optional[int] = None,
        has_weight_zeros: Optional[bool] = None,
    ):
        if device != "cpu":
            raise NotImplementedError(
                "Only device=cpu is currently supported in Int8DynActIntxWeightLinearQuantizer"
            )
        else:
            self.device = device

        if precision != torch.float32:
            raise NotImplementedError(
                "Only precision=torch.float32 is currently supported in Int8DynActIntxWeightLinearQuantizer"
            )
        else:
            self.precision = precision

        if bitwidth is None:
            self.bitwidth = 4
            logger.warning(f"bitwidth not specified, defaulting to {self.bitwidth}.")
        else:
            self.bitwidth = bitwidth

        if groupsize is None:
            self.groupsize = 128
            logger.warning(f"groupsize not specified, defaulting to {self.groupsize}.")
        else:
            self.groupsize = groupsize

        if has_weight_zeros is None:
            self.has_weight_zeros = False
            logger.warning(
                f"has_weight_zeros not specified, defaulting to {self.has_weight_zeros}."
            )
        else:
            self.has_weight_zeros = has_weight_zeros

    def quantize(self, model: nn.Module) -> nn.Module:
        model = model.to(self.device).to(self.precision)
        _replace_linear_with_quantized_linear(
            model,
            kwargs={
                "group_size": self.groupsize,
                "nbit": self.bitwidth,
                "has_weight_zeros": self.has_weight_zeros,
            },
        )
        return model


class _IntxWeightQuantizedEmbedding(nn.Module):
    def __init__(
        self,
        nbit,
        pack_weights_op,
        embedding_op,
    ):
        super().__init__()
        self.nbit = nbit
        self._pack_weights_op = pack_weights_op
        self._embedding_op = embedding_op

    def quantize_and_pack_weights(self, weights, group_size):
        self.group_size = group_size
        num_embeddings, embedding_dim = weights.shape

        weight_qvals, weight_scales, weight_zeros = _quantize(
            weights, self.group_size, self.nbit, has_weight_zeros=True
        )
        self.packed_weight_qvals = self._pack_weights_op(weight_qvals.to(torch.int8))
        self.num_embeddings = torch.empty(0, num_embeddings, dtype=torch.int8)
        self.embedding_dim = torch.empty(0, embedding_dim, dtype=torch.int8)
        self.weight_scales = weight_scales
        self.weight_zeros = weight_zeros.to(torch.int8)

    def forward(self, x):
        shape = x.shape
        return self._embedding_op(
            self.packed_weight_qvals,
            self.num_embeddings,
            self.embedding_dim,
            self.weight_scales,
            self.weight_zeros,
            x.reshape(-1),
        ).reshape(*shape, -1)


class _IntxWeightQuantizedEmbeddingFallback(nn.Module):
    def __init__(
        self,
        nbit,
    ):
        super().__init__()
        self.nbit = nbit

    def quantize_and_pack_weights(self, weights, group_size):
        self.group_size = group_size
        num_embeddings, embedding_dim = weights.shape

        weight_qvals, weight_scales, weight_zeros = _quantize(
            weights, self.group_size, self.nbit, has_weight_zeros=True
        )
        self.weight_qvals = weight_qvals.to(torch.int32)
        self.weight_scales = weight_scales
        self.weight_zeros = weight_zeros.to(torch.int32)

    def forward(self, x):
        shape = x.shape
        res = []
        for i in x:
            res.append(
                dequantize_per_channel_group(
                    w_int8=self.weight_qvals[i, :].reshape(1, -1),
                    scales=self.weight_scales[i, :].reshape(1, -1),
                    zero_points=self.weight_zeros[i, :].reshape(1, -1),
                    quant_min=None,  # TODO: why is this an arg for this function
                    quant_max=None,  # TODO: why is this an arg for this function
                    dtype=None,  # TODO: why is this an arg for this function
                    group_size=self.group_size,
                    output_dtype=torch.float32,
                ).reshape(-1)
            )
        return torch.stack(res).reshape(*shape, -1)


def _replace_embedding_with_quantized_embedding(module: nn.Module, kwargs={}):
    group_size = kwargs["group_size"]
    nbit = kwargs["nbit"]

    assert not isinstance(module, nn.Embedding)
    assert nbit >= 1 and nbit <= 8

    for name, child in module.named_children():
        if not isinstance(child, nn.Embedding):
            _replace_embedding_with_quantized_embedding(child, kwargs)
        else:
            try:
                qembedding = _IntxWeightQuantizedEmbedding(
                    nbit,
                    getattr(torch.ops.torchao, f"_pack_embedding_{nbit}bit"),
                    getattr(torch.ops.torchao, f"_embedding_{nbit}bit"),
                )
                setattr(module, name, qembedding)
                getattr(module, name).quantize_and_pack_weights(
                    child.weight, group_size
                )
            except Exception as e:
                logger.warning(
                    f"_IntxWeightQuantizedEmbedding raised an exception during quantize_and_pack_weights: {e}\n"
                    + "Falling back to **slow** implementation _IntxWeightQuantizedEmbeddingFallback."
                )
                qembedding = _IntxWeightQuantizedEmbeddingFallback(nbit)
                setattr(module, name, qembedding)
                getattr(module, name).quantize_and_pack_weights(
                    child.weight, group_size
                )


class IntxWeightEmbeddingQuantizer:
    def __init__(
        self,
        device,
        precision,
        *,
        bitwidth: Optional[int] = None,
        groupsize: Optional[int] = None,
    ):
        if device != "cpu":
            raise NotImplementedError(
                "Only device=cpu is currently supported in IntxWeightEmbeddingQuantizer"
            )
        else:
            self.device = device

        if precision != torch.float32:
            raise NotImplementedError(
                "Only precision=torch.float32 is currently supported in IntxWeightEmbeddingQuantizer"
            )
        else:
            self.precision = precision

        if bitwidth is None:
            self.bitwidth = 4
            logger.warning(f"bitwidth not specified, defaulting to {self.bitwidth}.")
        else:
            self.bitwidth = bitwidth

        if groupsize is None:
            self.groupsize = 128
            logger.warning(f"groupsize not specified, defaulting to {self.groupsize}.")
        else:
            self.groupsize = groupsize

    def quantize(self, model: nn.Module) -> nn.Module:
        model = model.to(self.device).to(self.precision)
        _replace_embedding_with_quantized_embedding(
            model,
            kwargs={
                "group_size": self.groupsize,
                "nbit": self.bitwidth,
            },
        )
        return model


from torchao.experimental.packed_linear_int8_dynamic_activation_intx_weight_layout import (
    PackedLinearInt8DynamicActivationIntxWeightLayout,
)
from torchao.quantization.linear_activation_quantized_tensor import (
    to_linear_activation_quantized,
)
from torchao.quantization.quant_api import (
    MappingType,
    ZeroPointDomain,
    _get_linear_subclass_inserter,
    to_affine_quantized_intx,
)
from torchao.quantization.utils import _get_per_token_block_size


def int8_dynamic_activation_intx_weight(
    weight_dtype: torch.dtype = torch.int4,
    granularity: Union[PerRow, PerGroup] = PerGroup(128),
    has_weight_zeros: bool = False,
    weight_mapping_type=MappingType.ASYMMETRIC,
    act_mapping_type=MappingType.ASYMMETRIC,
    layout=PackedLinearInt8DynamicActivationIntxWeightLayout(),  # PlainLayout() also works, but will be slow
):
    """
    Dynamically quantizes activations with 8-bits and weights with a low-bit value for linear layers.
    More specifically, activations are dynamically quantized to 8-bits in a channelwise manner with scales and zeros.
    Weights are quantized with scales and optionally zeros (controlled by has_weight_zeros) in a groupwise or channelwise
    manner using the number of bits specified by weight_dtype.

    args:
        weight_dtype: The dtype to use for weight quantization.  Must be torch.intx, where 1 <= x <= 8.
        granularity: The granularity to use for weight quantization.  Must be PerGroup or PerRow.
        has_weight_zeros: Whether or not to include zeros in the weight quantization.
        weight_mapping_type: The type of mapping to use for the weight quantization.  Must be one of MappingType.ASYMMETRIC or MappingType.SYMMETRIC.
        act_mapping_type: The type of mapping to use for the activation quantization.  Must be one of MappingType.ASYMMETRIC or MappingType.SYMMETRIC.
        layout: The layout to use for the packed weight tensor.  Must be PackedLinearInt8DynamicActivationIntxWeightLayout (default) or PlainLayout.
            The layout does not affect the quantization numerically and both layouts will give the same results.  PlainLayout is a generic layout
            that works on all devices, but it is much slower than PackedLinearInt8DynamicActivationIntxWeightLayout on CPU.
            PackedLinearInt8DynamicActivationIntxWeightLayout is a specialized layout for CPU performance.
            When using PackedLinearInt8DynamicActivationIntxWeightLayout,
             - The weight tensor must have device=CPU
             - The weight tensor must have dtype=float32 (note that after applying quantization, the weights will no longer be float32)
             - act_mapping_type must be MappingType.ASYMMETRIC
    """
    try:
        torch.ops.torchao._pack_8bit_act_4bit_weight
    except AttributeError:
        raise Exception(
            "TorchAO experimental kernels are not loaded.  To install the kernels, run `USE_CPP=1 pip install .` from ao on a machine with an ARM CPU."
            + "  Alternatively, use layout=PlainLayout() with int8_dynamic_activation_intx_weight, but note that doing so will result in much slower performance."
        )

    dtype_to_bit_width = {
        torch.int1: 1,
        torch.int2: 2,
        torch.int3: 3,
        torch.int4: 4,
        torch.int5: 5,
        torch.int6: 4,
        torch.int7: 7,
        torch.int8: 8,
    }
    if weight_dtype not in dtype_to_bit_width:
        raise ValueError(
            f"weight_dtype must be one of {list(dtype_to_bit_width.keys())}, got {weight_dtype}"
        )
    bit_width = dtype_to_bit_width[weight_dtype]
    layout_arg = layout

    def apply(weight):
        if isinstance(granularity, PerGroup):
            group_size = granularity.group_size
        elif isinstance(granularity, PerRow):
            group_size = weight.shape[-1]
        else:
            raise ValueError(
                f"granularity must be PerGroup or PerRow, got {granularity}"
            )

        assert weight.shape[-1] % group_size == 0

        layout = layout_arg
        if isinstance(layout, PackedLinearInt8DynamicActivationIntxWeightLayout):
            assert (
                weight.device == torch.device("cpu")
            ), "PackedLinearInt8DynamicActivationIntxWeightLayout requires weight.device=CPU"
            assert (
                weight.dtype == torch.float32
            ), "PackedLinearInt8DynamicActivationIntxWeightLayout requires weight.dtype=float32"
            assert (
                act_mapping_type == MappingType.ASYMMETRIC
            ), "PackedLinearInt8DynamicActivationIntxWeightLayout requires act_mapping_type=MappingType.ASYMMETRIC"
            assert not layout.has_params_set(), "PackedLinearInt8DynamicActivationIntxWeightLayout params should not already be set"
            layout = PackedLinearInt8DynamicActivationIntxWeightLayout(
                bit_width=bit_width,
                group_size=group_size,
                has_weight_zeros=has_weight_zeros,
            )

        quant_min = -(1 << (bit_width - 1))
        quant_max = (1 << (bit_width - 1)) - 1
        weight = to_affine_quantized_intx(
            weight,
            mapping_type=weight_mapping_type,
            block_size=(1, group_size),
            target_dtype=torch.int32,
            quant_min=quant_min,
            quant_max=quant_max,
            eps=torch.finfo(torch.float32).eps,
            zero_point_dtype=torch.int8,
            preserve_zero=has_weight_zeros,
            zero_point_domain=ZeroPointDomain.INT
            if has_weight_zeros
            else ZeroPointDomain.NONE,
            _layout=layout,
        )

        # Note that PackedLinearInt8DynamicActivationIntxWeightLayout has dynamic activation quantization fused
        # with the kernel and it should not be applied separately
        if not isinstance(layout, PackedLinearInt8DynamicActivationIntxWeightLayout):
            activation_quant_func = lambda x: to_affine_quantized_intx(
                x,
                mapping_type=act_mapping_type,
                block_size=_get_per_token_block_size(x),
                target_dtype=torch.int32,
                quant_min=-128,  # lower bound of int8
                quant_max=127,  # upper bound of int8
                scale_dtype=torch.float32,
                zero_point_dtype=torch.int32,
            )
            weight = to_linear_activation_quantized(weight, activation_quant_func)
        return weight

    return _get_linear_subclass_inserter(apply)


class UIntxWeightOnlyQuantizedLinear(nn.Module):
    def __init__(
        self,
        pack_weight_op,
        linear_op,
    ):
        super().__init__()
        self._pack_weights_op = pack_weight_op
        self._linear_op = linear_op

    def quantize_and_pack_weights(self, weights, nbit, group_size):
        self.nbit = nbit
        self.group_size = group_size

        weight_qvals, weight_scales, weight_zeros = _quantize(
            weights, self.group_size, self.nbit, has_weight_zeros=True, signed=False
        )
        weight_scales = torch.transpose_copy(weight_scales, 1, 0)
        weight_zeros = torch.transpose_copy(weight_zeros, 1, 0)
        weight_zeros = -weight_zeros * weight_scales
        self.weight_scales = nn.Parameter(weight_scales, requires_grad=False)
        self.weight_zeros = nn.Parameter(weight_zeros, requires_grad=False)
        packed_weights = self._pack_weights_op(weight_qvals.cpu()).to(device="mps")
        self.packed_weights = nn.Parameter(packed_weights, requires_grad=False)

    def forward(self, x):
        assert x.dim() >= 2
        if x.dim() == 2:
            return self._linear_op(
                x,
                self.packed_weights,
                self.group_size,
                self.weight_scales,
                self.weight_zeros,
            )

        lead_shape = x.shape[0:-1]
        k = x.shape[-1]
        n = self.weight_scales.shape[1]
        return self._linear_op(
            x.reshape(-1, k),
            self.packed_weights,
            self.group_size,
            self.weight_scales,
            self.weight_zeros,
        ).reshape(*lead_shape, n)


# TODO(mcandales): Consolidate with _replace_linear_with_quantized_linear
def _replace_linear_with_quantized_linear_mps(module: nn.Module, kwargs={}):
    group_size = kwargs["group_size"]
    nbit = kwargs["nbit"]

    assert not isinstance(module, nn.Linear)
    assert nbit >= 1 and nbit <= 7

    for name, child in module.named_children():
        if not isinstance(child, nn.Linear):
            _replace_linear_with_quantized_linear_mps(child, kwargs)
        else:
            assert child.bias is None
            qlinear = UIntxWeightOnlyQuantizedLinear(
                pack_weight_op=getattr(torch.ops.torchao, f"_pack_weight_{nbit}bit"),
                linear_op=getattr(
                    torch.ops.torchao, f"_linear_fp_act_{nbit}bit_weight"
                ),
            )
            setattr(module, name, qlinear)
            qlinear.quantize_and_pack_weights(child.weight, nbit, group_size)


class UIntxWeightOnlyLinearQuantizer:
    def __init__(
        self,
        device,
        precision,
        *,
        bitwidth: Optional[int] = None,
        groupsize: Optional[int] = None,
    ):
        if device != "mps":
            raise NotImplementedError(
                "Only device=mps is currently supported in UIntxWeightOnlyLinearQuantizer"
            )
        else:
            self.device = device

        if precision not in [torch.float32, torch.float16, torch.bfloat16]:
            raise ValueError(
                "Only precisions float32, float16 & bfloat16 are supported in UIntxWeightOnlyLinearQuantizer"
            )
        else:
            self.precision = precision

        if bitwidth is None:
            bitwidth = 4
            logger.warning(f"bitwidth not specified, defaulting to {bitwidth}.")
        if bitwidth not in range(1, 8):
            raise ValueError(
                "Only bitwidts 1 to 7 are supported in UIntxWeightOnlyLinearQuantizer"
            )
        else:
            self.bitwidth = bitwidth

        if groupsize is None:
            groupsize = 128
            logger.warning(f"groupsize not specified, defaulting to {groupsize}.")
        if groupsize not in [32, 64, 128, 256]:
            raise ValueError(
                "Only groupsizes 32, 64, 128 & 256 are supported in UIntxWeightOnlyLinearQuantizer"
            )
        else:
            self.groupsize = groupsize

    def quantize(self, model: nn.Module) -> nn.Module:
        model = model.to(self.device).to(self.precision)
        _replace_linear_with_quantized_linear_mps(
            model,
            kwargs={
                "group_size": self.groupsize,
                "nbit": self.bitwidth,
            },
        )
        return model
    
#> ======================================== Zijie Custom ========================================

import configparser
import re
from dataclasses import dataclass
from typing import List

import os
current_path = os.path.dirname(os.path.abspath(__file__))
TMAC_CONFIG_PATH = current_path + "/ops/tmac/t-mac/kcfg.ini"

import numpy as np
from typing import Tuple, Optional

@dataclass
class TMACConfig:
    """量化计算配置参数的数据类"""
    # 基础参数
    bits: int = 2
    M: int = 3200
    N: int = 1
    K: int = 3200
    zero_point: bool = False
    dtype: str = "int8"

    # 分组参数
    g: int = 4
    group_size: int = 128
    act_group_size: int = 64
    m_groups: int = -1

    # 新增架构参数
    bm: int = 128     # 块大小（block_m）
    kfactor: int = 16 # K轴缩放因子

    simd_n_in = 16
    simd_n_out = 8

    @classmethod
    def from_section(cls, section_name: str, config_parser: configparser.ConfigParser) -> 'TMACConfig':
        """从INI文件section解析出配置对象"""
        # 从section名称提取基础参数
        match = re.match(
            r'^qgemm_lut_t\d+_(\w+)_m(\d+)_k(\d+)_n(\d+)_b(\d+)$',
            section_name
        )
        if not match:
            raise ValueError(f"Invalid section format: {section_name}")

        # 构建基础参数字典
        base_params = {
            'dtype': match.group(1),
            'M': int(match.group(2)),
            'K': int(match.group(3)),
            'N': int(match.group(4)),
            'bits': int(match.group(5))
        }

        base_params['M'] = base_params['M'] // base_params['bits']

        # 合并文件配置参数
        section = config_parser[section_name]
        param_dict = base_params.copy()

        # 处理所有可能覆盖的参数
        int_keys = ['g', 'group_size', 'act_group_size', 'm_groups', 'bm', 'kfactor']
        bool_keys = ['zero_point']

        for key in int_keys:
            if section.get(key) is not None:
                param_dict[key] = section.getint(key)

        for key in bool_keys:
            if section.get(key) is not None:
                param_dict[key] = section.getboolean(key)

        return cls(**param_dict)

def load_tmac_config_ini(file_path: str) -> List[TMACConfig]:
    """读取INI文件并生成QuantConfig对象列表"""
    config = configparser.ConfigParser()
    config.read(file_path)

    return [
        TMACConfig.from_section(section, config)
        for section in config.sections()
        if re.match(r'^qgemm_lut_t\d+_', section)  # 过滤有效section
    ]

def find_tmac_config(
    configs: List[TMACConfig],
    target_bits: int,
    target_M: int,
    target_K: int,
    target_N: int
) -> Optional[TMACConfig]:
    """
    根据量化参数查找匹配的TMAC配置
    
    :param configs: TMAC配置列表
    :param target_bits: 目标比特数
    :param target_M: 目标M维度（注意：这里应该传入处理后的M值，即原始M // bits）
    :param target_K: 目标K维度
    :return: 第一个匹配的配置对象，未找到返回None
    """
    for config in configs:
        #> Check M, K, N, bits
        if (config.bits == target_bits and
            config.M == target_M and
            config.K == target_K and
            config.N == target_N):
            return config
    return None

def pack_tmac_weight(
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

    return w.detach(), scales.detach()

#> This function can preserve the PPL on BitNet.
def pesudo_tmac_weight_quant(weight: torch.Tensor, group_size: int, force_per_tensor: bool = True) -> torch.Tensor:
    dtype = weight.dtype
    org_w_shape = list(weight.shape)
    M, K = weight.shape

    if not force_per_tensor:
        assert weight.shape[1] % group_size == 0, "group_size must be a divisor of weight.shape[1]"
        weight = weight.reshape(M, K// group_size, group_size).float()
        scale = 1 / weight.abs().mean(dim=-1).clamp(min=1e-5)
        qweight = (weight * scale.unsqueeze(-1).expand_as(weight)).round().clamp(-1, 1)
        qweight = qweight.type(dtype).reshape(org_w_shape)
    else :
        weight = weight.float()
        scale = 1 / weight.abs().mean().clamp(min=1e-5)
        qweight = (weight * scale).round().clamp(-1, 1)
        scale = scale * torch.ones(M, K // group_size).to(dtype)

    return qweight, scale

class TMACWeightOnlyQuantizedLinear(nn.Module):
    def __init__(
        self,
        pack_weight_op,
        preprocess_weights_fn,
        qgemm_lut_fn,
        batch_size
    ):
        super().__init__()
        self._pack_weights_op = pack_weight_op
        self._preprocess_weights_fn = preprocess_weights_fn
        self._qgemm_lut_fn = qgemm_lut_fn
        
        # TMAC kernel config parameters
        self.N = batch_size
        self.op_config = None
        
        # TMAC kernel config parameters
        self.all_config = load_op_config_ini(CONFIG_PATH)
        
        assert len(self.all_config) > 0, "TMAC Config is Empty"
        
        # TMAC Local Variables when FORWARD model.
        self.orig_weight = None
        self.QLUT = None
        self.LUT_scales = None
        self.LUT_biases = None
        self.packed_qweight = None
        self.scales_t = None

    def quantize_and_pack_weights(self, weights, nbit, group_size):
        self.nbit = nbit
        self.group_size = group_size
        
        assert weights.dim() == 2, "Currently only support 2D weights"

        self.orig_weight = weights
        self.M, self.K = weights.shape
        self.op_config = find_tmac_config(
            self.all_config, self.nbit, self.M, self.K, self.N
        )
        if self.op_config is None:
            import pdb; pdb.set_trace()
            raise NotImplementedError("This kernel is not supported.")
        
        #> Only work for BitNet
        pesudo_qweight = pesudo_tmac_weight_quant(weights)
        
        scaling_factor = 1.0 / pesudo_qweight.abs().max()
        
        weight_qvals = (pesudo_qweight * scaling_factor).to(torch.uint8)
        weight_scales = torch.tensor([scaling_factor], dtype=torch.float16)
        weight_zeros = None     #> TMAC does not use zeros.
        
        packed_qweight, scales = self._pack_weights_op(
            weight_qvals.cpu(), 
            weight_scales,
            weight_zeros,
            nbit,
            self.op_config.g,               #> Fixed to 4, this is TMAC LUT compute group size.
            self.op_config.bm,
            self.op_config.kfactor,
            self.op_config.simd_n_in,
            self.op_config.simd_n_out
        )
        
        packed_qweight = packed_qweight.to(device="cpu")
        
        self.packed_qweight = nn.Parameter(packed_qweight, requires_grad=False)
        self.scales_t = nn.Parameter(scales, requires_grad=False)

    def _TMAC_forward(self, x):
        assert self.op_config != None, "TMAC Config is None"
        assert self.packed_qweight != None, "TMAC packed_weights is None"
        
        if x.dtype != torch.float16:
            x.to(torch.float16)
        
        self.LUT_Scales = torch.zeros((self.op_config.N, self.op_config.K // self.op_config.act_group_size), dtype=torch.float16)
        self.LUT_Biases = torch.zeros((self.op_config.N, self.op_config.K // self.op_config.act_group_size), dtype=torch.float16)
        self.QLUT = torch.zeros((self.op_config.N, self.op_config.K // self.op_config.g, 1 << self.op_config.g), dtype=torch.uint8)
        
        self._preprocess_weights_fn(
            x, self.LUT_Scales, self.LUT_Biases, self.QLUT,
            self.op_config.M, self.op_config.K, self.op_config.N,
        )
        
        result = torch.zeros((self.op_config.N, self.op_config.M), dtype=torch.float16)
        
        self._qgemm_lut_fn(
            self.packed_qweight, self.QLUT, self.scales_t, 
            self.LUT_Scales, self.LUT_Biases, result, 
            self.op_config.M, self.op_config.K, 
            self.op_config.N, self.op_config.bits
        )
        
        return result.to(torch.float16)

    def forward(self, x):
        assert x.dim() >= 2
        assert self.op_config != None, "TMAC Config is None"
        assert self.N == x.shape[0], "TMAC N is preset."
        
        return self._TMAC_forward(x)
        
        # if x.dim() == 2:
        #     return self._linear_op(
        #         x,
        #         self.packed_weights,
        #         self.group_size,
        #         self.weight_scales,
        #         self.weight_zeros,
        #     )

        # lead_shape = x.shape[0:-1]
        # k = x.shape[-1]
        # n = self.weight_scales.shape[1]
        # return self._linear_op(
        #     x.reshape(-1, k),
        #     self.packed_weights,
        #     self.group_size,
        #     self.weight_scales,
        #     self.weight_zeros,
        # ).reshape(*lead_shape, n)

def _replace_linear_with_quantized_linear_tmac(module: nn.Module, kwargs={}):
    group_size = kwargs["group_size"]
    nbit = kwargs["nbit"]
    batch_size = kwargs["batch_size"]

    assert not isinstance(module, nn.Linear)
    assert nbit >= 1 and nbit <= 4

    for name, child in module.named_children():
        if not isinstance(child, nn.Linear):
            _replace_linear_with_quantized_linear_tmac(child, kwargs)
        else:
            if not name.endswith('proj'):
                continue
            
            assert child.bias is None
            qlinear = TMACWeightOnlyQuantizedLinear(
                pack_weight_op=pack_tmac_weight,
                preprocess_weights_fn=getattr(
                    torch.ops.torchao, f"preprocess"
                ),
                qgemm_lut_fn=getattr(
                    torch.ops.torchao, f"qgemm_lut",
                ),
                batch_size=batch_size
            )
            setattr(module, name, qlinear)
            qlinear.quantize_and_pack_weights(child.weight, nbit, group_size)

class TMACWeightOnlyLinearQuantizer:
    def __init__(
        self,
        device,
        precision,
        batch_size,
        *,
        bitwidth: Optional[int] = None,
        groupsize: Optional[int] = None,
    ):
        if device != "cpu":
            raise NotImplementedError(
                "Only device=mps is currently supported in TMACWeightOnlyLinearQuantizer"
            )
        else:
            self.device = device

        if precision not in [torch.float32, torch.float16]:
            raise ValueError(
                "Only precisions float32 & float16 are supported in TMACWeightOnlyLinearQuantizer"
            )
        else:
            self.precision = precision

        if bitwidth is None:
            bitwidth = 2
            logger.warning(f"bitwidth not specified, defaulting to {bitwidth}.")
        if bitwidth not in range(1, 4):
            raise ValueError(
                "Only bitwidts 1 to 4 are supported in TMACWeightOnlyLinearQuantizer"
            )
        else:
            self.bitwidth = bitwidth

        if groupsize is None:
            groupsize = 128
            logger.warning(f"groupsize not specified, defaulting to {groupsize}.")
        if groupsize not in [128]:
            raise ValueError(
                "Only groupsizes 128 are supported in TMACWeightOnlyLinearQuantizer"
            )
        self.groupsize = groupsize
            
        if batch_size is None:
            raise ValueError(
                "batch_size is required in TMACWeightOnlyLinearQuantizer"
            )
        elif batch_size <= 0:
            raise ValueError(
                "batch_size must be greater than 0 in TMACWeightOnlyLinearQuantizer"
            )
        else:
            self.batch_size = batch_size

    def quantize(self, model: nn.Module) -> nn.Module:
        model = model.to(self.device).to(self.precision)
        _replace_linear_with_quantized_linear_tmac(
            model,
            kwargs={
                "group_size": self.groupsize,
                "nbit": self.bitwidth,
                "batch_size": self.batch_size
            },
        )
        return model

# Python-based reference implementation of Int8DynActLowbitWeightQuantizedLinear
# It is arithmetically equivalent to Int8DynActLowbitWeightQuantizedLinear
# This is used to test Int8DynActLowbitWeightQuantizedLinear, and as a fallback when
# Int8DynActLowbitWeightQuantizedLinear is not available
class _TMACWeightQuantizedLinearFallback(nn.Module):
    def __init__(self, nbits, group_size):
        super().__init__()
        self.nbits = nbits
        self.group_size = group_size

    def quantize_and_pack_weights(self, weights, group_size):
        self.group_size = group_size
        
        self._n, self._k = weights.shape
        assert self._k % group_size == 0, "group_size must divide k"

        self.qweight_qval, self.scale = pesudo_tmac_weight_quant(weights, self.group_size, force_per_tensor=True)
        
        Aref = torch.round(self.qweight_qval + 2 ** (self.nbits - 1)).to(torch.uint8)
        
        Adq = Aref.T.reshape(self._k // group_size, group_size, self._n).to(torch.float32) - (2 ** (self.nbits - 1))
        #> [group_size, K // group_size, M // bits] * [K // group_size, M // bits]
        Adq = Adq.permute(1, 0, 2) / self.scale.T
        self.pesudo_qweight = Adq.permute(1, 0, 2).reshape(self._k, self._n).T
        self.pesudo_qweight = self.pesudo_qweight.to(torch.float32)

    def _forward_2d(self, x):
        assert x.dim() == 2
        x = x.to(torch.float32)
        res = torch.matmul(x, self.pesudo_qweight.T)
        return res

    def forward(self, x):
        assert x.dim() >= 2
        x.to(torch.float32)
        
        if x.dim() == 2:
            return self._forward_2d(x)

        assert x.dim() >= 3
        lead_shape = x.shape[0:-2]
        m, k = x.shape[-2], x.shape[-1]
        n = self._n
        x = x.reshape(-1, m, k)

        res = [self._forward_2d(x[i, :, :]) for i in range(x.shape[0])]
        res = torch.stack(res)
        res = res.reshape(*lead_shape, m, n)
        return res