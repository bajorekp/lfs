#!/bin/bash

set -o xtrace
set -e

source buildchain/.env

cd lfs-commands/chapter08
docker build \
  --progress=plain \
  --build-arg PARENT_IMAGE="$NAME:$TAG-chapter07" \
  --build-arg MAKEFLAGS="-j8" \
  -t $NAME:$TAG-chapter08 \
  . | tee -a ../../log/chapter08.log
