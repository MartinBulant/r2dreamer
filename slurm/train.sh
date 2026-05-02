#!/bin/bash

#SBATCH --job-name=R2dreamer
#SBATCH --output=logs/log_files/%x_%j.out
#SBATCH --error=logs/log_files/%x_%j.err
#SBATCH --partition=gpufast
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=10
#SBATCH --mem=50G
#SBATCH --mail-user=bulanma2@fel.cvut.cz
#SBATCH --mail-type=END,FAIL

ml virtualenv/20.32.0
ml Bazel/6.5.0
ml Python/3.11
ml libffi
source .venv/bin/activate
export MUJOCO_GL=egl
export PYOPENGL_PLATFORM=egl

python train.py logdir=./logs/test