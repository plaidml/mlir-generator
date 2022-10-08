#!/usr/bin/env bash

# Dumps Linalg-on-tensors MLIR from Python module
SYNTAX="dump_linalg.sh [-tpp] model.py [args]"

set -eu

# Use main build or TPP build
BUILD=main
if [ $# -ge 1 ] && [ "$1" == "-tpp" ]; then
  BUILD=tpp
  shift
fi

# Python Module
if [ $# -ge 1 ] && [ -f "$1" ]; then
  SCRIPT="$1"
  shift
else
  echo "Syntax: $SYNTAX"
  exit 1
fi
ARGS="$@"

VENV="$(git rev-parse --show-toplevel)/external/iree/build/$BUILD/venv"
if [ ! -d "$VENV" ]; then
    echo "Cannot find repository root"
    exit 1
fi
source "$VENV"/bin/activate

# This works on Linux and Darwin
TEMP_DIR=$(mktemp -d 2>/dev/null || mktemp -d -t 'iree')

# Run iree-compiler with --mlir-print-ir-after=iree-mhlo-to-linalg-on-tensors
echo "Running [$SCRIPT $ARGS], output on $TEMP_DIR"
python "$SCRIPT" $ARGS > "$TEMP_DIR"/out 2> "$TEMP_DIR"/err || true

# Clean-up output to grab the IR
MLIR_FILE="$TEMP_DIR"/"$(basename $SCRIPT)".mlir
echo "Cleaning up output, creating MLIR file $MLIR_FILE"
cat "$TEMP_DIR"/err \
  | grep -v ": \w tensorflow" \
  | grep -v "Invoked with" \
  | grep -v "^//" \
  | grep -v "Traceback" \
  | grep -v "File \"" \
  | grep -v VmModule \
  | grep -v TypeError \
  | grep -v "GPU devices" \
  | grep -v Downloading \
  | grep -v TensorFlow > $MLIR_FILE

# Clean-up debug symbols from MLIR file
sed -i 's/ loc(unknown)//' "$MLIR_FILE" # unknown
sed -i '/=/ s/ loc(fused.*)//' "$MLIR_FILE" # assignments
sed -i '/yield/ s/ loc(fused.*)//' "$MLIR_FILE" # yield
sed -i '/\^bb/ s/ loc(fused.*)/)/' "$MLIR_FILE" # basic block
sed -i '/} -> tensor/ s/ loc(fused.*)//' "$MLIR_FILE" # block end

# Move the MLIR file into the repository (we know the repo exists)
MLIR_DIR="$(git rev-parse --show-toplevel)/front-ends/iree/mlir"
echo "Moving MLIR file to $MLIR_DIR"
mv "$MLIR_FILE" "$MLIR_DIR"

rm -r $TEMP_DIR
deactivate
