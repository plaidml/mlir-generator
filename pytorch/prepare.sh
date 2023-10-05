#!/bin/bash

# Installs torch-mlir following the following documentation:
# https://github.com/llvm/torch-mlir/tree/main

# Top of current root
ROOT="$(git rev-parse --show-toplevel)"
if [ ! -d "$ROOT" ]; then
    echo "Cannot find repository root"
    exit 1
fi
cd "$ROOT"

# Always grab a fresh env environment
echo " + Creating a fresh conda env "
ENV_PATH="${ROOT}/env"
CONDA_DIR="torch-mlir-conda"
CONDA_DIR_PATH="${ENV_PATH}/${CONDA_DIR}/miniconda3/"
ARCH_NAME=$(uname -m)

mkdir -p ${ENV_PATH}
rm -rf ${CONDA_DIR_PATH}

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-${ARCH_NAME}.sh
bash Miniconda3-latest-Linux-${ARCH_NAME}.sh -b -p ${CONDA_DIR_PATH}
eval "$(${CONDA_DIR_PATH}/bin/conda shell.bash hook)"
rm Miniconda3-latest-Linux-${ARCH_NAME}.sh

conda activate ${CONDA_DIR_PATH}
conda install -y python=3.11.3

# Install Python dependencies
echo " + Install Python dependencies"
python -m pip install --upgrade pip
pip install --pre torch-mlir torchvision \
  -f https://llvm.github.io/torch-mlir/package-index/ \
  --extra-index-url https://download.pytorch.org/whl/nightly/cpu

# Install any additional dependencies
pip install transformers

# Done
echo " + Done."
conda deactivate
echo " + Run conda activate ${CONDA_DIR_PATH} before using torch-mlir"
