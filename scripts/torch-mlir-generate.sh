#!/usr/bin/env bash

# Generate MLIR files from Torch-MLIR
# Run from inside the repo already, no need to check

ROOT=$(git rev-parse --show-toplevel)
if [ ! -d "$ROOT" ]; then
    echo "Cannot find repository root"
    exit 1
fi
MODELS="$ROOT/front-ends/torch-mlir/models"
MLIRs="$ROOT/front-ends/torch-mlir/mlir"

# For each Python script, generate an MLIR file
# with the same name and different extension
for MODEL in $(find "$MODELS" -type f -name \*.py); do
    OUT="${$MODEL%.py}.mlir"
    python "$MODEL" > "$MLIR"
done