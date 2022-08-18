#!/usr/bin/env bash

# Builds IREE following the following documentation:
# https://iree-org.github.io/iree/building-from-source/getting-started/
# https://iree-org.github.io/iree/building-from-source/python-bindings-and-importers/

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

# Go into iree subrepo
ROOT="$(git rev-parse --show-toplevel)/external/iree"
if [ ! -d "$ROOT" ]; then
    echo "Cannot find repository root"
    exit 1
fi
pushd "$ROOT"

# Always grab a fresh env environment
echo " + Creating a fresh venv"
rm -rf mlir_venv
python -m venv mlir_venv
echo "export PATH=$PATH:$ROOT/build/tools" >> mlir_venv/bin/activate
echo "export PYTHONPATH=$ROOT/build/compiler/bindings/python:$ROOT/build/runtime/bindings/python" >> mlir_venv/bin/activate
echo "export CMAKE_GENERATOR=Ninja" >> mlir_venv/bin/activate
source mlir_venv/bin/activate

# Install Python dependencies
echo " + Install Python dependencies"
python -m pip install --upgrade pip
python -m pip install -r ./runtime/bindings/python/iree/runtime/build_requirements.txt
python -m pip install tf-nightly iree-tools-tflite keras

# Checkout iree repos too
echo " + Updating submodules"
git submodule update --depth 1 --init --recursive

# Build iree with LLVM in-tree
echo " + Build iree in-tree"
cmake -Bbuild -S . \
  -DCMAKE_BUILD_TYPE=$BUILD_TYPE \
  -DCMAKE_C_COMPILER=clang \
  -DCMAKE_CXX_COMPILER=clang++ \
  -DIREE_ENABLE_ASSERTIONS=ON \
  -DIREE_BUILD_PYTHON_BINDINGS=ON \
  -DIREE_ENABLE_LLD=ON

ninja -C build

# Basic tests
#echo " + Run iree tests"
#ninja -C build iree-test-deps
#ctest --test-dir build --output-on-failure --parallel $(nproc)

# Python bindings test
echo " + Checking IREE Python bindings"
python -c "import iree.compiler"
python -c "import iree.runtime"

popd
