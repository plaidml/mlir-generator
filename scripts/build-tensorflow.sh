#!/usr/bin/env bash

# Builds TensorFlow from source
# https://www.tensorflow.org/install/source

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
pushd "$ROOT"

# Always grab a fresh env environment
echo " + Creating a fresh venv"
rm -rf mlir_venv
python -m venv mlir_venv
PYTHON_VERSION=$(ls mlir_venv/lib)
echo "export PYTHON_BIN_PATH=$ROOT/mlir_venv/bin/python" >> mlir_venv/bin/activate
echo "export PYTHON_LIB_PATH=$ROOT/mlir_venv/lib/$PYTHON_VERSION/site-packages" >> mlir_venv/bin/activate
echo "export TF_NEED_ROCM=0" >> mlir_venv/bin/activate
echo "export TF_NEED_TENSORRT=0" >> mlir_venv/bin/activate
echo "export TF_NEED_CUDA=0" >> mlir_venv/bin/activate
echo "export TF_DOWNLOAD_CLANG=0" >> mlir_venv/bin/activate
echo "export TF_SET_ANDROID_WORKSPACE=0" >> mlir_venv/bin/activate
source mlir_venv/bin/activate

# Bazel is a build dep, but installing bazel is... odd
if [ ! -f bazelisk ]; then
  wget -O bazelisk https://github.com/bazelbuild/bazelisk/releases/download/v1.12.2/bazelisk-linux-amd64
  chmod +x bazelisk
fi
cp bazelisk mlir_venv/bin/bazelisk

# Install Python dependencies
echo " + Install Python dependencies"
python -m pip install --upgrade pip
python -m pip install numpy wheel packaging requests opt_einsum
python -m pip install keras_preprocessing --no-deps

# Configure
echo " + Configure with venv python"
echo "" | python configure.py

# Build
echo " + Building TensorFlow"
bazelisk build //tensorflow/tools/pip_package:build_pip_package

popd
