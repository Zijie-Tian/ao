from transformers import AutoTokenizer, AutoModelForCausalLM
import torch
import time

from tokenization_bitnet import BitnetTokenizer
from modeling_bitnet import BitnetForCausalLM

model_name = "/Users/tianzijie/hf_models/bitnet_b1_58-3B"

tokenizer = BitnetTokenizer.from_pretrained(model_name)
model = BitnetForCausalLM.from_pretrained(model_name)

# tokenizer = AutoTokenizer.from_pretrained(model_name)
# model = AutoModelForCausalLM.from_pretrained(model_name)

# 显式设置pad_token
if tokenizer.pad_token is None:
    tokenizer.pad_token = tokenizer.eos_token

# 生成配置
generation_config = {
    "max_length": 100,
    "pad_token_id": tokenizer.pad_token_id,
    "eos_token_id": tokenizer.eos_token_id,
    "do_sample": True,
    "top_k": 50,
    "temperature": 0.7
}

# 对话历史管理
chat_history = {
    "input_ids": None,
    "attention_mask": None
}

# 速度统计变量
total_tokens = 0
total_time = 0.0

print("Chatbot started (type 'exit' to end)")
try:
    while True:
        user_input = input("You: ")

        if user_input.lower() in ["exit", "quit"]:
            break

        # 编码新输入
        new_input = tokenizer(
            user_input + tokenizer.eos_token,
            return_tensors="pt",
            padding=True,
            return_attention_mask=True
        )

        # 拼接历史对话
        if chat_history["input_ids"] is not None:
            input_ids = torch.cat([chat_history["input_ids"], new_input.input_ids], dim=-1)
            attention_mask = torch.cat([chat_history["attention_mask"], new_input.attention_mask], dim=-1)
        else:
            input_ids = new_input.input_ids
            attention_mask = new_input.attention_mask

        # 准备设备
        device = model.device
        input_ids = input_ids.to(device)
        attention_mask = attention_mask.to(device)

        # 记录生成时间
        start_time = time.time()
        if device.type == 'cuda':
            torch.cuda.synchronize(device)  # 确保CUDA操作同步

        # 生成回复
        outputs = model.generate(
            input_ids=input_ids,
            attention_mask=attention_mask,
            **generation_config
        )

        # 同步并记录结束时间
        if device.type == 'cuda':
            torch.cuda.synchronize(device)
        end_time = time.time()

        # 计算生成token数量
        input_length = input_ids.shape[-1]
        output_length = outputs.shape[-1]
        generated_tokens = output_length - input_length

        # 计算速度
        generation_time = end_time - start_time
        speed = generated_tokens / generation_time if generation_time > 0 else float('inf')
        
        # 更新统计
        total_tokens += generated_tokens
        total_time += generation_time

        # 显示实时速度
        print(f"Bot: {tokenizer.decode(outputs[0, input_length:], skip_special_tokens=True)}")
        print(f"[Speed] {speed:.2f} tokens/s (Generated {generated_tokens} tokens in {generation_time:.2f}s)")

        # 更新历史记录
        chat_history["input_ids"] = outputs
        chat_history["attention_mask"] = torch.ones_like(outputs)

        # 截断历史
        chat_history["input_ids"] = chat_history["input_ids"][:, -512:]
        chat_history["attention_mask"] = chat_history["attention_mask"][:, -512:]

finally:
    # 显示最终统计
    if total_time > 0:
        avg_speed = total_tokens / total_time
        print(f"\n[Final Statistics]")
        print(f"Total generated tokens: {total_tokens}")
        print(f"Total generation time: {total_time:.2f} seconds")
        print(f"Average speed: {avg_speed:.2f} tokens/s")