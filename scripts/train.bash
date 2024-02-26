#!/bin/bash
set -e        # exit when error
set -o xtrace # print command

GPUS=$1

CUDA_VISIBLE_DEVICES=$GPUS python3 -m src.main \
    +experiment=re10k \
    data_loader.train.batch_size=2 \
    trainer.val_check_interval=null \
    wandb.mode=run