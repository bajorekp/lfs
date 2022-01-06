#!/bin/bash

set -o xtrace
set -e

source buildchain/.env

cd lfs-commands/chapter10
docker build \
  --progress=plain \
  --build-arg PARENT_IMAGE="$NAME:$TAG-chapter09" \
  --build-arg MAKEFLAGS="-j8" \
  -t $NAME:$TAG-chapter10 \
  . | tee -a ../../log/chapter10.log
