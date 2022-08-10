#!/usr/bin/env bash

# Builds the docker image to run the MLIR generators inside

ROOT=$(git rev-parse --show-toplevel)
if [ ! -d "$ROOT" ]; then
    echo "Cannot find repository root"
    exit 1
fi
DOCKERFILE="$ROOT/docker/Dockerfile"
IMAGENAME="mlir-generator"
CONTAINER=$(docker ps -a | grep "$IMAGENAME" | cut -d " " -f 1)

if [ "$CONTAINER" != "" ]; then
    echo "Container already exists. To recreate a new one, remove the existing one with:"
    echo " $ docker rm -f $CONTAINER"
    echo "And then re-run this script again."
    echo "To use the container, use:"
    echo " $ docker exec -it $CONTAINER /bin/bash"
    exit 1
fi

echo " + Build container"
docker build -t "$IMAGENAME" -f "$DOCKERFILE" .
echo " + Run container"
docker run -it -d "$IMAGENAME" bash
CONTAINER=$(docker ps -a | grep "$IMAGENAME" | cut -d " " -f 1)
echo " + Test container"
docker exec -it "$CONTAINER" /bin/bash -c 'echo "Container created successfully"'