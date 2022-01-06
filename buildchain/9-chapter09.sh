#!/bin/bash

set -o xtrace
set -e

source buildchain/.env

cd lfs-commands/chapter09
docker build \
  --progress=plain \
  --build-arg PARENT_IMAGE="$NAME:$TAG-chapter08" \
  --build-arg MAKEFLAGS="-j8" \
  -t $NAME:$TAG-chapter09 \
  . | tee -a ../../log/chapter09.log
