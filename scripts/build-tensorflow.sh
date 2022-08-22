#!/usr/bin/env bash

# Installs TensorFlow on a virtual environment

# Run on container/remote directly, need to check
PROJECT="mlir-generator"
if [ -d "$PROJECT" ]; then
  cd "$PROJECT"
fi

# Go into tensorflow subrepo
# This is created on the fly, not a submodule
ROOT="$(git rev-parse --show-toplevel)/external/tensorflow"
if [ ! -d "$ROOT" ]; then
    echo "Cannot find repository root"
    exit 1
fi
mkdir -p "$ROOT"
pushd "$ROOT"

# Always grab a fresh env environment
echo " + Creating a fresh venv"
rm -rf mlir_venv
python -m venv mlir_venv
source mlir_venv/bin/activate

# Install Python dependencies
echo " + Install Python dependencies"
python -m pip install --upgrade pip
python -m pip install tensorflow keras

popd