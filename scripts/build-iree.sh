#!/usr/bin/env bash

# Builds IREE following the following documentation:
# https://iree-org.github.io/iree/building-from-source/getting-started/
# https://iree-org.github.io/iree/building-from-source/python-bindings-and-importers/
# TPP build as in https://github.com/iree-org/iree/commit/63e12cafdf0bba3263bf2b5f74d7b2381f43af65

SYNTAX="build_iree.sh [-tpp]"

set -eu

BUILD_WITH_TPP=False
if [ $# -ge 1 ] && [ "$1" == "-tpp" ]; then
  BUILD_WITH_TPP=True
  shift
fi

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

# Go into iree subrepo
ROOT="$(git rev-parse --show-toplevel)/external/iree"
if [ ! -d "$ROOT" ]; then
    echo "Cannot find repository root"
    exit 1
fi
pushd "$ROOT"

BLD_DIR="$ROOT/build"
git fetch
if [ "$BUILD_WITH_TPP" == "True" ]; then
  BLD_DIR="$BLD_DIR/tpp"
  git reset --hard origin/tpp
else
  BLD_DIR="$BLD_DIR/main"
  git reset --hard origin/main
fi
mkdir -p "$BLD_DIR"
VENV_DIR="$BLD_DIR/venv"

# Always grab a fresh env environment
echo " + Creating a fresh venv"
rm -rf $VENV_DIR
python -m venv $VENV_DIR
echo "export PATH=\$PATH:$BLD_DIR/tools" >> $VENV_DIR/bin/activate
echo "export PYTHONPATH=$BLD_DIR/compiler/bindings/python:$BLD_DIR/runtime/bindings/python" >> $VENV_DIR/bin/activate
source $VENV_DIR/bin/activate

# Install Python dependencies
echo " + Install Python dependencies"
python -m pip install --upgrade pip
python -m pip install -r $ROOT/runtime/bindings/python/iree/runtime/build_requirements.txt
python -m pip install tensorflow iree-tools-tf keras transformers torch datasets

# Checkout iree repos too
echo " + Updating submodules"
git submodule update --init --recursive

# Build iree with LLVM in-tree
echo " + Build iree in-tree"
EXTRA_CMAKE_FLAGS=""
if [ "$BUILD_WITH_TPP" == "True" ]; then
  echo " + Adding TPP options"
  EXTRA_CMAKE_FLAGS="-DIREE_USE_TPP=ON \
                     -DCMAKE_C_FLAGS=-DIREE_HAL_EXECUTABLE_IMPORT_PROVIDER_DEFAULT_FN=iree_samples_tpp_import_provider \
                     -DIREE_HAL_EXECUTABLE_LOADER_EXTRA_DEPS=iree_samples_tpp_import"
fi
cmake -GNinja -B$BLD_DIR -S $ROOT \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_COMPILER_LAUNCHER=ccache \
    -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
    -DCMAKE_C_COMPILER=clang \
    -DCMAKE_CXX_COMPILER=clang++ \
    -DCMAKE_BUILD_WITH_INSTALL_RPATH=ON \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DIREE_ENABLE_ASSERTIONS=ON \
    -DIREE_BUILD_PYTHON_BINDINGS=ON \
    -DIREE_ENABLE_LLD=ON \
     $EXTRA_CMAKE_FLAGS \
    -DPython3_EXECUTABLE=$(which python)

# Not everything works with TPP
if [ "$BUILD_WITH_TPP" == "True" ]; then
  ninja -C "$BLD_DIR" iree-opt iree-compile iree-run-module iree-benchmark-module iree-lld
  ninja -C "$BLD_DIR" compiler/bindings/python/iree/compiler/tflite.py
  ninja -C "$BLD_DIR" compiler/bindings/python/iree/compiler/tools/tflite.py
  ninja -C "$BLD_DIR" runtime/package
else
  ninja -C "$BLD_DIR"
fi

# Python bindings test
echo " + Checking IREE Python bindings"
python -c "import iree.compiler"
python -c "import iree.runtime"

deactivate
popd
