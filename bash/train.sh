#!/bin/bash
python -u src/run.py \
trainer=womd \
model=scg_womd \
datamodule=h5_womd \
loggers.wandb.name="hptr_womd" \
loggers.wandb.project="sim_agents" \
loggers.wandb.entity="team-wu" \
datamodule.data_dir='/home/fuyang/code/HPTR/datasets/waymo' \
hydra.run.dir='logs/${now:%Y-%m-%d}/${now:%H-%M-%S}'

