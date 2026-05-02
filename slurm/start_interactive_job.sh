#!/bin/bash

srun \
  --job-name=r2dreamer-interactive \
  --partition=gpufast \
  --gres=gpu:1 \
  --cpus-per-task=10 \
  --mem 30G \
  --pty bash -i
