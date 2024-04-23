#!/bin/bash
python -u src/run.py \
trainer=womd \
model=scg_womd \
datamodule=h5_womd \
datamodule.batch_size=3 \
datamodule.num_workers=8 \
loggers.wandb.name="hptr_womd" \
loggers.wandb.project="sim_agents" \
loggers.wandb.entity="team-wu" \
loggers.wandb.offline=True \
datamodule.data_dir='/home/ywa445/datasets/waymo' \
hydra.run.dir='logs/${now:%Y-%m-%d}/${now:%H-%M-%S}'

