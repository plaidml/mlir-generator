#!/usr/bin/env bash

# Builds MLIR-HLO following the following documentation:
# https://github.com/tensorflow/mlir-hlo#quickstart-building-and-testing

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

# Go into mlir-hlo subrepo
ROOT="$(git rev-parse --show-toplevel)/external/mlir-hlo"
if [ ! -d "$ROOT" ]; then
    echo "Cannot find repository root"
    exit 1
fi
pushd "$ROOT"

# Always grab a fresh env environment
echo " + Creating a fresh venv"
rm -rf mlir_venv
python -m venv mlir_venv
#echo "export PYTHONPATH=$ROOT/build/..." >> mlir_venv/bin/activate
echo "export PATH=$PATH:$ROOT/build/bin" >> mlir_venv/bin/activate
echo "export CMAKE_GENERATOR=Ninja" >> mlir_venv/bin/activate
source mlir_venv/bin/activate

# Install Python dependencies
echo " + Install Python dependencies"
python -m pip install --upgrade pip
# TODO: Install more stuff that we'll use when we do

# Build LLVM on the right commit
echo " + Building LLVM"
LLVM_VERSION=$(cat build_tools/llvm_version.txt)
git clone https://github.com/llvm/llvm-project.git
pushd llvm-project
git co main
git br -D mlir-hlo
git co -b mlir-hlo $LLVM_VERSION
popd
mkdir -p llvm-build
./build_tools/build_mlir.sh ${PWD}/llvm-project/ ${PWD}/llvm-build

# Build mlir-hlo with LLVM in-tree
echo " + Build mlir-hlo in-tree"
rm -rf build
mkdir build
cmake -Bbuild -S . \
   -DLLVM_ENABLE_LLD=ON \
   -DCMAKE_BUILD_TYPE=$BUILD_TYPE \
   -DLLVM_ENABLE_ASSERTIONS=On \
   -DMLIR_DIR=${PWD}/llvm-build/lib/cmake/mlir
ninja -C build

# Basic tests
echo " + Run mlir-hlo tests"
ninja -C build check-mlir-hlo
