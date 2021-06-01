#!/bin/sh

echo "Building runtime environment"
docker build -t ml4t .

docker run --rm --name ml4t -e PYTHONPATH="/root/project" -v $(pwd)/src:/root/project/src ml4t:latest $@
