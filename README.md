SWEAL -- uSing random Walks and nodE Attributes for Link prediction.
===============================================================================

SWEAL is a fork of [SEAL](SEAL-OGB) aimed at training GNNs on sparser k-hop subgraphs on the downstream task of link prediction.

All experimental setup for the dataset is available under the folder experiments. To reproduce the results in the paper, run the scripts in this folder.

The code for baselines is available under the folder baselines.

###For example usage on non-attributed datasets, see below:


To run ScaLed on USAir with profiling for a seed:
```
python seal_link_pred.py --dataset USAir --epochs 50 --m 2 --M 20 --seed 1 --profile
 ```

To run SEAL on USAir with profiling for a seed:
```
python seal_link_pred.py --dataset USAir --epochs 50 --num_hops 2 --seed 1 --profile
 ```

###For example usage on attributed datasets, see below:


To run ScaLed on Cora with profiling for a seed:
```
python seal_link_pred.py --dataset Cora --m 3 --M 20 --use_feature --profile --seed 1
 ```

To run SEAL on Cora with profiling for a seed:
```
python seal_link_pred.py --dataset Cora --num_hops 3 --use_feature --profile --seed 1
 ```

