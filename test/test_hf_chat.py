import copy
import torch
from tabulate import tabulate
from transformers import AutoModelForCausalLM, AutoTokenizer

try:
    from lm_eval.evaluator import evaluate
    from lm_eval.models.huggingface import HFLM
    from lm_eval.tasks import get_task_dict
except ImportError:
    print("""
Error: The 'lm_eval' module was not found.
To install, follow these steps:
pip install git+https://github.com/EleutherAI/lm-evaluation-harness.git
""")
    raise  # Re-raise the ImportError

from torchao.quantization import (
    autoquant,
    fpx_weight_only,
    int4_weight_only,
    int8_dynamic_activation_int8_weight,
    int8_weight_only,
    quantize_,
    AffineQuantizedObserverBase,
)
from torchao.quantization.quant_api import (
    insert_observers_,
)

from torchao.sparsity import (
    semi_sparse_weight,
    sparsify_,
)

from torchao.quantization.quant_primitives import (
    MappingType,
    ZeroPointDomain,
    _get_reduction_params,
    choose_qparams_affine_with_min_max,
)

from torchao.quantization.granularity import (
    PerAxis,
    PerTensor,
)

torch._inductor.config.force_fuse_int_mm_with_mul = True
torch._inductor.config.fx_graph_cache = True


def pretty_print_nested_results(results, precision: int = 6):
    def format_value(value):
        if isinstance(value, float):
            return f"{value:.{precision}f}"
        return value

    main_table = []
    for task, metrics in results["results"].items():
        subtable = [[k, format_value(v)] for k, v in metrics.items() if k != "alias"]
        subtable.sort(key=lambda x: x[0])  # Sort metrics alphabetically
        formatted_subtable = tabulate(subtable, tablefmt="grid")
        main_table.append([task, formatted_subtable])

def run_chat(
    repo_id,
    tasks,
    limit,
    device,
    precision,
    quantization,
    sparsity,
    compile,
    save,
    batch_size,
    max_length,
):
    tokenizer = AutoTokenizer.from_pretrained(repo_id)
    model = AutoModelForCausalLM.from_pretrained(repo_id, torch_dtype=precision).to(
        device
    )
    
    raw_model = copy.deepcopy(model)

    if quantization == "autoquant" and compile:
        model = torch.compile(model, mode="max-autotune", fullgraph=True)

    if quantization == "int8dq":
        quantize_(model, int8_dynamic_activation_int8_weight())
    elif quantization == "int8wo":
        quantize_(model, int8_weight_only())
    elif quantization == "int4wo":
        # note cannot quantize this model on cpu and run it on cuda at this time
        quantize_(model.to(device=device), int4_weight_only())
    elif quantization == "fp6":
        quantize_(model, fpx_weight_only(3, 2))
    elif quantization == "autoquant":
        model = autoquant(model.to(device=device))
    elif quantization == "awq":
        from torchao.prototype.awq.example import get_calib_dataset
        from torchao.utils import TORCH_VERSION_AT_LEAST_2_3

        if not TORCH_VERSION_AT_LEAST_2_3:
            print("AWQ quantization requires torch2.3+")
            exit()
        from torchao.prototype.awq import (
            AWQObservedLinear,
            awq_uintx,
            insert_awq_observer_,
        )

        quant_dtype = torch.uint4
        group_size = 64
        calibration_limit = 10
        calibration_seq_length = 1024
        model = model.to(device)
        insert_awq_observer_(
            model,
            calibration_limit,
            calibration_seq_length,
            quant_dtype=quant_dtype,
            group_size=group_size,
        )
        with torch.no_grad():
            calibration_data = get_calib_dataset(
                tokenizer=tokenizer,
                n_samples=calibration_limit,
                block_size=calibration_seq_length,
            )
            for batch in calibration_data:
                model(batch.to(device))
                del batch
        is_observed_linear = lambda m, fqn: isinstance(m, AWQObservedLinear)
        quantize_(
            model,
            awq_uintx(quant_dtype=quant_dtype, group_size=group_size),
            is_observed_linear,
        )

    if quantization != "autoquant" and compile:
        model = torch.compile(model, mode="max-autotune", fullgraph=True)

    if sparsity == "semi_sparse":

        def all_linear(mod, name):
            if isinstance(mod, torch.nn.Linear) and "lm_head" not in name:
                return True
            return False

        torch.sparse.semi_structured._FORCE_CUTLASS = False
        sparsify_(model, semi_sparse_weight(), filter_fn=all_linear)
    elif sparsity == "semi_sparse_mlp_only":

        def all_linear(mod, name):
            if (
                isinstance(mod, torch.nn.Linear)
                and "lm_head" not in name
                and "mlp" in name
            ):
                return True
            return False

        torch.sparse.semi_structured._FORCE_CUTLASS = False
        sparsify_(model, semi_sparse_weight(), filter_fn=all_linear)

    if sparsity and compile:
        model = torch.compile(model, mode="max-autotune", fullgraph=True)

    import pdb; pdb.set_trace()

    with torch.no_grad():
        prompt = "Hello, how are you?"
        inputs = tokenizer(prompt, return_tensors="pt").to(device)
        outputs = model.generate(**inputs, max_new_tokens=50, do_sample=True, temperature=0.7)
        print(tokenizer.decode(outputs[0], skip_special_tokens=True))

    if save:
        file_name = repo_id.split("/")[-1] + "-" + quantization + ".pt"
        torch.save(model.state_dict(), file_name)


def check_quant_acc(
    repo_id,
    tasks,
    limit,
    device,
    precision,
    quantization,
    sparsity,
    compile,
    save,
    batch_size,
    max_length,
):
    tokenizer = AutoTokenizer.from_pretrained(repo_id)
    model = AutoModelForCausalLM.from_pretrained(repo_id, torch_dtype=precision).to(
        device
    )
    import pdb; pdb.set_trace()
    
    # TODO Learn how to use the Observer
    # obs = LinearObserver(
    #    MappingType.SYMMETRIC,
    #    torch.uint8,
    #    granularity=PerTensor()
    # )
    # insert_observers_(model, obs, None)
    quantize_(model, int8_weight_only())
    
    import pdb; pdb.set_trace()
    
    

if __name__ == '__main__':
    run_chat(
        repo_id="/Volumes/zijiessd/hf_models/Qwen2.5/Qwen2.5-0.5B/",
        tasks=["wikitext"],
        limit=10,
        device="cpu",
        precision=torch.float32,
        quantization="int8wo",
        sparsity=None,
        compile=False,
        save=False,
        batch_size=1,
        max_length=128,
    )