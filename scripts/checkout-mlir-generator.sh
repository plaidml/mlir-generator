#!/usr/bin/env bash

# Checks out this repository on a remote (ex. container)

ORG="rengolin"
PROJECT="mlir-generator"
REPO="https://github.com/$ORG/$PROJECT.git"

# Clone the repo
git clone $REPO
cd "$PROJECT"
git submodule update --recursive