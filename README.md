## ScaLed: Sampling En**c**losing Subgr**a**ph for **L**ink Pr**ed**iction

ScaLed (Sampling En**c**losing Subgr**a**ph for **L**ink Pr**ed**iction) is a fork of [SEAL](https://github.com/facebookresearch/SEAL_OGB) aimed at training GNNs on sparser k-hop subgraphs on the downstream task of link prediction.

## Experimental setup
To setup the development environment, use the `quick_install.sh` bash script. This contains all the essential python packages needed to run the experiments and work on the codebase. **Please note that this dev setup is specifically crafted for Macbooks running the M1 silicon.** If you have any other system, update how Pytorch and Pytorch Geometric gets build in the script (lines 5 and 6).  

To run the quick install use the command: `source quick_install.sh`. Do note that you will be prompted to enter `y` at times.

In case any important package is left out, please let us know. 

## Useful Command line arguments
Since ScaLed is a fork of the [SEAL](https://github.com/facebookresearch/SEAL_OGB) repo, all the command line arguments that exist in SEAL-OGB(with few exceptions) will work in ScaLed as well.

The following are the command line arguments specifically created for ScaLed

- `dataset_stats` - Helps print dataset statistics
- `m` - Set the length of the random walk taken for ScaLed (called h in the paper)
- `M` - Set the number of random walks rooted from the source and destination nodes to take (called k in the paper)
- `dropedge` - Set dropedge value to randomly drop edge indices in the forward pass
- `cuda_device` - Set the GPU ID to be used (eg; 0)
- `calc_ratio` - Calculate the sparsity of ScaLed vs SEAL
- `pairwise` - Run with pairwise loss function
- `loss_fn` - Set the loss function (default loss is BCE with logit loss)
- `neg_ratio` - Set the number of negative edges to take for one positive edge (defaults to 1)
- `profile` - Helps run the Pytorch Geometric profiler to get insights into GPU memory usage, time taken etc.
- `split_val_ratio` - Choose the split % for validation (defaults to 5% of data)
- `split_test_ratio` - Choose the split % for test (defaults to 10% of data)
- `train_mlp` - Train using structure unaware MLP (this is used as a baseline)
- `train_gae` - Train using graph auto encoders (this is used as a baseline) 
- `base_gae` - Set the base GNN encoder for the GAE training
- `dropout` - Set value of dropout in forward pass of GNNs (defaults to 0.5)
- `seed` - Set seed for reproducibility (defaults to 1)
- `train_n2v` - Train using Node2Vec model (this is used as a baseline)
- `train_mf` - Train using Matrix Factorization (this is used as a baseline)

## Supported Datasets
We support the following datasets:
1) ogbl-collab (other ogb link prediction datasets are not tested) from "[OGB](https://ogb.stanford.edu/) https://arxiv.org/abs/2005.00687"
2) Planetoid Dataset (Cora, PubMed, CiteSeer) from "Revisiting Semi-Supervised Learning with Graph Embeddings
    <https://arxiv.org/abs/1603.08861>"
3) attributed-Facebook (other attributed datasets are not tested) from "Scaling Attributed Network Embedding to Massive Graphs"
    <https://arxiv.org/abs/2009.00826>"
4) SEAL datasets (USAir, Yeast etc. introduced in the original paper) from "Link prediction based on graph neural networks https://arxiv.org/pdf/1802.09691.pdf"

## Reproducibility

All experimental setup for all datasets are available under the experiments folder. To reproduce the results in the paper, run the scripts in this folder. We run each experiment 5 times on five fixed random seeds to ensure reproducibility of results from the paper.

The code for all baselines is available under the baselines folder. All baselines specific to ogbl datasets are under the ogbl_datasets folder.

#### For example usage on non-attributed datasets, see below:


To run ScaLed on USAir with profiling for a seed:
```
python seal_link_pred.py --dataset USAir --epochs 50 --m 2 --M 20 --seed 1 --profile
 ```

To run SEAL on USAir with profiling for a seed:
```
python seal_link_pred.py --dataset USAir --epochs 50 --num_hops 2 --seed 1 --profile
 ```

#### For example usage on attributed datasets, see below:


To run ScaLed on Cora with profiling for a seed:
```
python seal_link_pred.py --dataset Cora --m 3 --M 20 --use_feature --profile --seed 1
 ```

To run SEAL on Cora with profiling for a seed:
```
python seal_link_pred.py --dataset Cora --num_hops 3 --use_feature --profile --seed 1
 ```

## Backward compatibility with SEAL-OGB

Since ScaLed is a fork of the original SEAL-OGB repo, all of their experiments work on our repo as well

*Note: The earlier name of the repo was SWEAL-OGB. As a result, there could be traces of SWEAL-OGB still existing in the codebase . SWEAL-OGB should be treated as a synomyn of ScaLed.*


## Reporting Issues and Improvements
We currently don't have an issue/PR template. However, if you find an issue in our code please create an issue in GitHub. It would be great if you could give as much information regarding the issue as possible(what command was run, what are the python package versions, providing full stack trace etc.).  

If you have any further questions, you can reach out to us via email.
[Paul Louis](mailto:paul.louis@ontariotechu.net), [Shweta Ann Jacob](mailto:shweta.jacob@ontariotechu.net)


## Miscellaneous

We also provide the following miscellaneous codes:
- `plots` folder - contains all the code required to reproduce all the plots in the paper
- `data` folder - contains the datasets from SEAL ("Link prediction based on graph neural networks https://arxiv.org/pdf/1802.09691.pdf")
- `custom_losses.py` - contains some custom loss functions adapted from "Pairwise Learning for Neural Link Prediction (https://arxiv.org/pdf/2112.02936.pdf"
- `hypertuner.py` - Helps run some tuning to determine best m and M values (or h, k values as shown in paper)
- `parsers` folder - Helps parse output logs to build tables in the paper

## Bibtex
If you find our work useful, please cite us using the following: 
```
TODO: Insert bibtex here
```
