#!/bin/bash
python -u src/run.py \
trainer=womd \
model=scg_womd \
model.model.decoder.n_pred=6 \
model.model.decoder.mlp_head.n_step_future=1 \
datamodule=h5_womd \
datamodule.batch_size=3 \
datamodule.num_workers=8 \
loggers.wandb.name="hptr_womd" \
loggers.wandb.project="sim_agents" \
loggers.wandb.entity="team-wu" \
loggers.wandb.offline=True \
datamodule.data_dir='/home/ywa445/datasets/waymo' \
hydra.run.dir='logs/${now:%Y-%m-%d}/${now:%H-%M-%S}'

