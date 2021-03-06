#!/bin/bash
# calculate the node/edge numbers and ratio for 5 seeds for ogbl-collab

# ogbl-collab
for SEED in 1 2 3 4 5; do
  python seal_link_pred.py --dataset ogbl-collab --num_hops 1 --m 1 --M 10 --use_feature --calc_ratio --train_percent 15 --seed $SEED
done