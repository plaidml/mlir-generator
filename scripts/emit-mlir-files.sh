#!/usr/bin/env bash

# Emit MLIR files from existing examples
# Depends on (in this order):
#  * the container being installed
#  * the mlir-generator repo being checked out
#  * the front-ends being build

# Run on container/remote directly, need to check
PROJECT="mlir-generator"
if [ -d "$PROJECT" ]; then
  cd "$PROJECT"
fi

# Check the environment
if [ ! -d "externals/torch-mlir/mlir_venv" ]; then
    echo "Torch-MLIR project not built"
    exit 1
fi

# For each front-end, enter its environment, run all the scripts
FRONTENDS="torch-mlir"
for FE in FRONTENDS; do
    source "external/$FE/bin/activate"
    $ROOT/scripts/$FE-generate.sh
    deactivate
done