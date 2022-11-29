#!/bin/sh
yes Y | conda create --name scaled_3_8 python=3.8 # don't use python 3.10 as it breaks the PyCharm debugger flow: https://youtrack.jetbrains.com/issue/PY-52137
source /opt/homebrew/Caskroom/miniforge/base/bin/activate # point to your conda activate binary
conda init bash
conda activate scaled_3_8
yes Y | conda install pytorch torchvision -c pytorch
export CC=/opt/homebrew/Cellar/llvm/13.0.1_1/bin/clang # point to the brew clang compiler
pip install torch-sparse==0.6.13
pip install torch-scatter torch-sparse  torch-spline-conv torch-geometric -f https://data.pyg.org/whl/torch-1.11.0+cpu.html
pip install matplotlib==3.6.1
pip install ogb==1.3.5
pip install networkx==2.8.7
pip install pytorch_memlab==0.2.4
pip install class_resolver==0.3.10
pip install fast-pagerank==0.0.4
pip install scikit-learn==1.1.3
