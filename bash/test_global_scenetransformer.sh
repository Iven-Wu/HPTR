#!/bin/bash

NUM_VIS=30

python -u src/run.py \
trainer=womd \
model=scg_womd \
datamodule=h5_womd \
datamodule.batch_size=8 \
resume=sub_womd \
action=validate \
trainer.limit_val_batches=1.0 \
resume.checkpoint=1jkle9m2:latest \
resume.model_overrides.n_video_batch=$NUM_VIS \
loggers.wandb.name="hptr_womd_val" \
loggers.wandb.project="sim_agents" \
loggers.wandb.entity="team-wu" \
datamodule.data_dir='/home/fuyang/code/HPTR/datasets/waymo' \
hydra.run.dir='logs/vis_glb10/${now:%Y-%m-%d}/${now:%H-%M-%S}' 