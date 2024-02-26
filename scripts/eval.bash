#!/bin/bash
set -e        # exit when error
set -o xtrace # print command

GPUS=$1

# Real Estate 10k
CUDA_VISIBLE_DEVICES=$GPUS python3 -m src.main \
    --config-name=compute_metrics \
    wandb.mode=run


# ACID
# python3 -m src.main +experiment=acid mode=test dataset/view_sampler=evaluation dataset.view_sampler.index_path=assets/evaluation_index_acid.json checkpointing.load=checkpoints/acid.ckpt