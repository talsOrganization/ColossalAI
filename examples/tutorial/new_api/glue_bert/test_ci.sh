#!/bin/bash
set -xe

for plugin in "torch_ddp" "torch_ddp_fp16" "gemini" "low_level_zero"; do
    torchrun --standalone --nproc_per_node 4  finetune.py --target_f1 0.86 --plugin $plugin
done
