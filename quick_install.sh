#!/bin/sh
conda create --name sweal_3_9 python=3.9 # don't use python 3.10 as it breaks the PyCharm debugger flow: https://youtrack.jetbrains.com/issue/PY-52137
conda init bash
conda activate sweal_3_9
conda install pytorch torchvision -c pytorch # we use 1.11.0 version of pytorch
pip install torch-scatter torch-sparse torch-cluster torch-spline-conv torch-geometric -f https://data.pyg.org/whl/torch-1.11.0+cpu.html # torch geometric version used is 2.0.4
pip install matplotlib==3.5.2
pip install ogb==1.3.3
pip install networkx==2.8
pip install pytorch_memlab==0.2.4
pip install class_resolver==0.3.9
pip install fast-pagerank==0.0.4
pip install scikit-learn==1.1.0
