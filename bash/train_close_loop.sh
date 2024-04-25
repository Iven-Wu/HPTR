#!/bin/bash

N_FUTURE=1
NUM_EPOCHS=24

python -u src/run.py \
trainer=womd \
trainer.max_epochs=$NUM_EPOCHS \
model=scg_womd \
model.model.decoder.n_pred=6 \
model.model.decoder.mlp_head.n_step_future=$N_FUTURE \
model.pre_processing.scene_centric.n_step_future=$N_FUTURE \
datamodule=h5_womd \
datamodule.batch_size=12 \
datamodule.num_workers=8 \
loggers.wandb.name="hptr_womd_close" \
loggers.wandb.project="sim_agents" \
loggers.wandb.entity="team-wu" \
loggers.wandb.offline=False \
datamodule.data_dir='/home/fuyang/code/HPTR/datasets/waymo' \
hydra.run.dir='logs/global_close/${now:%Y-%m-%d}/${now:%H-%M-%S}'

