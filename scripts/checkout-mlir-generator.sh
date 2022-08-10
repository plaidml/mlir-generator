#!/usr/bin/env bash

# Checks out this repository on a remote (ex. container)

ORG="rengolin"
PROJECT="mlir-generator"
REPO="https://github.com/$ORG/$PROJECT.git"

# Clone the repo
echo " + Cloning $PROJECT"
git clone $REPO
cd "$PROJECT"
echo " + Updating submodules"
git submodule update --depth 1 --init --recursive