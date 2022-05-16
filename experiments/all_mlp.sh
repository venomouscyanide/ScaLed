#!/bin/sh
# Cora
python seal_link_pred.py --dataset Cora --train_mlp --lr 0.001 --epochs 50 --split_val_ratio 0.05 --split_test_ratio 0.10 --runs 5
# CiteSeer
python seal_link_pred.py --dataset CiteSeer --train_mlp --lr 0.001 --epochs 50 --split_val_ratio 0.05 --split_test_ratio 0.10 --runs 5
# Pubmed
python seal_link_pred.py --dataset Pubmed --train_mlp --lr 0.001 --epochs 50 --split_val_ratio 0.05 --split_test_ratio 0.10 --runs 5
# attributed-Facebook
python seal_link_pred.py --dataset attributed-Facebook --train_mlp --lr 0.001 --epochs 50 --split_val_ratio 0.05 --split_test_ratio 0.10 --runs 5
# ogbl-collab
python seal_link_pred.py --dataset ogbl-collab --train_mlp --lr 0.001 --epochs 50 --split_val_ratio 0.05 --split_test_ratio 0.10 --runs 5