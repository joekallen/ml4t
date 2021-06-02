#!/bin/sh

echo "Building runtime environment"
docker build -t ml4t .

proj=$1
docker run -ti -e PYTHONPATH="/root/project" -v $(pwd)/$proj:/root/project/$proj --workdir "/root/project/$proj" ml4t:latest
