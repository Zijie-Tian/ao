import torch
import torchao
from torch.testing._internal.common_utils import TestCase
# 从quant_api模块导入实际存在的量化函数
from torchao.quantization import quantize_, int8_dynamic_activation_int4_weight, MinMaxObserver
from torchao.quantization.qat import (
    FakeQuantizeConfig,
    intx_quantization_aware_training
)

class TestQuantizeAPI(TestCase):
    def test_basic_quantization(self):
        """测试基础线性层的动态量化"""
        model = torch.nn.Linear(128, 256).eval()
        quantize_(
            model,
            intx_quantization_aware_training(
                FakeQuantizeConfig(torch.qint8, "per_tensor", is_symmetric=True),
                FakeQuantizeConfig(torch.qint8, "per_channel")
            ),
            inplace=True
        )
        quant_model = model
        
        # 验证量化属性
        self.assertTrue(hasattr(quant_model, 'weight_fake_quant'))
        self.assertEqual(quant_model.weight.dtype, torch.qint8)
        
        # 验证前向传播
        inputs = torch.randn(32, 128)
        outputs = quant_model(inputs)
        self.assertEqual(outputs.shape, (32, 256))

    def test_sequential_model_quantization(self):
        """测试多层序列模型的量化"""
        model = torch.nn.Sequential(
            torch.nn.Linear(128, 256),
            torch.nn.ReLU(),
            torch.nn.Linear(256, 128)
        ).eval()

        quantized_model = quantize(
            model,
            quant_dtype=torch.qint8,
            quant_min=-127,
            quant_max=127,
            observer=MinMaxObserver()
        )
        
        # 验证所有线性层都已量化
        for module in quantized_model.modules():
            if isinstance(module, torch.nn.Linear):
                self.assertTrue(hasattr(module, 'weight_fake_quant'))
        
        # 验证模型推理
        test_input = torch.randn(16, 128)
        with torch.no_grad():
            output = quantized_model(test_input)
            self.assertTrue(torch.isfinite(output).all())
            self.assertEqual(output.shape, (16, 128))

    def test_quantization_configuration(self):
        """测试量化配置参数"""
        model = torch.nn.Linear(64, 128).eval()
        
        quant_model = quantize(
            model,
            quant_dtype=torch.qint8,
            quant_min=-63,
            quant_max=63,
            observer=MinMaxObserver()
        )
        
        # 验证配置生效
        self.assertEqual(quant_model.weight_fake_quant.quant_min, -63)
        self.assertEqual(quant_model.weight_fake_quant.quant_max, 63)

    def test_fake_quantization(self):
        """测试伪量化基本功能"""
        # 1. 准备原始模型
        model = torch.nn.Linear(256, 512).eval()
        orig_weight = model.weight.detach().clone()
        
        # 2. 应用伪量化
        quantize_(
            model,
            intx_quantization_aware_training(
                FakeQuantizeConfig(torch.int8, "per_token", is_symmetric=False),
                FakeQuantizeConfig(torch.int4, group_size=32)
            ),
            inplace=True
        )
        quant_model = model
        
        # 3. 验证量化属性
        self.assertTrue(hasattr(quant_model, 'weight_fake_quant'))
        self.assertEqual(quant_model.weight.dtype, torch.float32)  # 伪量化后保持float32
        
        # 4. 验证数值范围
        quantized_weight = quant_model.weight_fake_quant(quant_model.weight)
        self.assertTrue(torch.all(quantized_weight >= -127))
        self.assertTrue(torch.all(quantized_weight <= 127))
        
        # 5. 验证前向传播
        inputs = torch.randn(64, 256)
        outputs = quant_model(inputs)
        self.assertEqual(outputs.shape, (64, 512))

    def test_int8_activation_int4_weight_qat(self):
        """测试int8动态激活和int4权重的伪量化"""
        # 1. 创建更复杂的测试模型
        model = torch.nn.Sequential(
            torch.nn.Linear(128, 256),
            torch.nn.ReLU(),
            torch.nn.Linear(256, 512),
            torch.nn.GELU(),
            torch.nn.Linear(512, 128)
        ).eval()

        # 2. 记录原始权重供后续比较
        original_weights = [layer.weight.clone() for layer in model if isinstance(layer, torch.nn.Linear)]

        # 3. 配置量化参数（增加更多配置选项）
        activation_config = FakeQuantizeConfig(
            dtype=torch.int8,
            quant_scheme="per_token",
            is_symmetric=False,
            quant_min=-128,
            quant_max=127
        )
        weight_config = FakeQuantizeConfig(
            dtype=torch.int4,
            group_size=64,  # 修改为更大的group size
            quant_scheme="per_group",
            is_symmetric=True
        )

        # 4. 应用量化配置并验证
        quantize_(
            model,
            intx_quantization_aware_training(activation_config, weight_config),
            inplace=True
        )

        # 5. 详细验证量化参数
        for i, module in enumerate(model.modules()):
            if isinstance(module, torch.nn.Linear):
                # 验证激活量化器
                self.assertTrue(hasattr(module, 'input_quant'), f"第{i}层缺少input_quant")
                self.assertEqual(module.input_quant.quant_min, -128)
                self.assertEqual(module.input_quant.quant_max, 127)
                
                # 验证权重量化器
                self.assertTrue(hasattr(module, 'weight_quant'), f"第{i}层缺少weight_quant")
                self.assertEqual(module.weight_quant.quant_min, -8)
                self.assertEqual(module.weight_quant.quant_max, 7)
                self.assertEqual(module.weight_quant.group_size, 64)
                self.assertTrue(module.weight_quant.is_symmetric)

        # 6. 验证权重更新
        for new_weight, orig_weight in zip(
            [layer.weight for layer in model if isinstance(layer, torch.nn.Linear)],
            original_weights
        ):
            self.assertFalse(torch.allclose(new_weight, orig_weight), "权重未发生量化变化")

        # 7. 执行前向计算并验证数值有效性
        test_input = torch.randn(32, 128)
        with torch.no_grad():
            output = model(test_input)
            self.assertEqual(output.shape, (32, 128))
            self.assertTrue(torch.isfinite(output).all(), "输出包含非法值")
