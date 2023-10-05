#!/usr/bin/env bash

# Generate MLIR files from Torch-MLIR
# Run from inside the repo already, no need to check

ROOT=$(git rev-parse --show-toplevel)
if [ ! -d "$ROOT" ]; then
    echo "Cannot find repository root"
    exit 1
fi

# For each Python script, generate an MLIR file
# with the same name and different extension
pushd "$ROOT/pytorch/torch-script/models"
for MODEL in $(find . -type f -name \*.py); do
    OUT="${MODEL%.py}.mlir"
    python "$MODEL" > "../mlir/$OUT"
done
popd

# For each Python script, generate an MLIR file
# with the same name and different extension
pushd "$ROOT/pytorch/torch-dynamo/models"
for MODEL in $(find . -type f -name \*.py); do
    OUT="${MODEL%.py}.mlir"
    python "$MODEL" > "../mlir/$OUT"
done
popd