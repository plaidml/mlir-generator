#!/usr/bin/env bash

# Builds torch-mlir following the following documentation:
# https://github.com/llvm/torch-mlir/blob/main/development.md

BUILD_TYPE=Release
if [ "$1" == "-d" ]; then
  echo "Building debug version"
  BUILD_TYPE=Debug
elif [ "$1" == "-rd" ]; then
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
git submodule update --depth 1 --init --recursive

# Go into torch-mlir subrepo
ROOT="$(git rev-parse --show-toplevel)/external/torch-mlir"
if [ ! -d "$ROOT" ]; then
    echo "Cannot find repository root"
    exit 1
fi
cd "$ROOT"

# Always grab a fresh env environment
echo " + Creating a fresh venv"
rm -rf mlir_venv
python -m venv mlir_venv
echo "export PYTHONPATH=$ROOT/build/tools/torch-mlir/python_packages/torch_mlir:$ROOT/examples" >> mlir_venv/bin/activate
echo "export CMAKE_GENERATOR=Ninja" >> mlir_venv/bin/activate
source mlir_venv/bin/activate

# Checkout torch-mlir repos too
echo " + Updating submodules"
git submodule update --depth 1 --init --recursive

# Install Python dependencies
echo " + Install Python dependencies"
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

# Build torch-mlir with LLVM in-tree
echo " + Build torch-mlir in-tree"
cmake -Bbuild \
  -DCMAKE_BUILD_TYPE=$BUILD_TYPE \
  -DCMAKE_C_COMPILER=clang \
  -DCMAKE_CXX_COMPILER=clang++ \
  -DPython3_FIND_VIRTUALENV=ONLY \
  -DLLVM_ENABLE_PROJECTS=mlir \
  -DLLVM_EXTERNAL_PROJECTS="torch-mlir;torch-mlir-dialects" \
  -DLLVM_EXTERNAL_TORCH_MLIR_SOURCE_DIR=`pwd` \
  -DLLVM_EXTERNAL_TORCH_MLIR_DIALECTS_SOURCE_DIR=`pwd`/externals/llvm-external-projects/torch-mlir-dialects \
  -DMLIR_ENABLE_BINDINGS_PYTHON=ON \
  -DLLVM_TARGETS_TO_BUILD=host \
  -DCMAKE_EXE_LINKER_FLAGS_INIT="-fuse-ld=lld" \
  -DCMAKE_MODULE_LINKER_FLAGS_INIT="-fuse-ld=lld" \
  -DCMAKE_SHARED_LINKER_FLAGS_INIT="-fuse-ld=lld" \
  externals/llvm-project/llvm
ninja -C build tools/torch-mlir/all

# Basic tests
echo " + Run torch-mlir tests"
ninja -C build check-torch-mlir check-torch-mlir-python
