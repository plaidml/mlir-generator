#!/usr/bin/env bash

# Builds PlaidML following the following documentation:
# https://github.com/plaidml/plaidml/issues/1972#issuecomment-1165789106

set -e

BUILD_TYPE=Release
if [ $# -ge 1 ] && [ "$1" == "-d" ]; then
  echo "Building debug version"
  BUILD_TYPE=Debug
elif [ $# -ge 1 ] && [ "$1" == "-rd" ]; then
  echo "Building rel+debug version"
  BUILD_TYPE=RelWithDebInfo
fi

# Run on container/remote directly, need to check
PROJECT="mlir-generator"
if [ -d "$PROJECT" ]; then
  cd "$PROJECT"
fi
# Make sure the repo is in a good shape
echo " + Updating submodules"
git submodule update --init --recursive

# Go into plaidml subrepo
ROOT="$(git rev-parse --show-toplevel)/external/plaidml"
if [ ! -d "$ROOT" ]; then
    echo "Cannot find repository root"
    exit 1
fi
pushd "$ROOT"

BLD_DIR="$ROOT/build-x86_64/Release"
mkdir -p "$BLD_DIR"
VENV_DIR="$BLD_DIR/venv"

# Download Miniconda
CONDA_SCRIPT=Miniconda3-latest-Linux-x86_64.sh
if [ ! -f ./$CONDA_SCRIPT ]; then
  echo " + Downloading Conda Instlal Script"
  wget https://repo.anaconda.com/miniconda/$CONDA_SCRIPT
fi

# Install miniconda
if [ ! -d miniconda ]; then
  echo " + Installing Conda Locally"
  bash ./$CONDA_SCRIPT -p "$PWD/miniconda" -b
fi

# Only create a new env if there isn't one
# Conda is *really* slow, unlike virtualenv
if [ ! -d "$VENV_DIR" ]; then
  echo " + Creating Conda env"
  eval "$(./miniconda/bin/conda shell.bash hook)"
  conda env create -f environment.yml -p "$VENV_DIR"
fi
conda activate "$VENV_DIR"

# Checkout plaidml repos too
echo " + Updating submodules"
git submodule update --init --recursive

# Build plaidml
echo " + Build plaidml in-tree"
./configure
ninja -C "$BLD_DIR"

# Test
pushd "$BLD_DIR"
PYTHONPATH=$PWD python plaidml/plaidml_setup.py
popd

conda deactivate
popd
