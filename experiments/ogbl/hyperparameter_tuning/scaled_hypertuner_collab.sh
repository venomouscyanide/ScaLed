#!/bin/bash

python hypertuner.py --model DGCNN --dataset ogbl-collab --use_feature --train_percent 15 --hidden_channels 256 --use_valedges_as_input --lr 0.0001 --epochs 5 --runs 1 --hyper_runs 5 --save_appendix "" --data_appendix "" --seed 1
