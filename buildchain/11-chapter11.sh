#!/bin/bash

set -o xtrace
set -e

source buildchain/.env

cd lfs-commands/chapter11
docker build \
  --progress=plain \
  --build-arg PARENT_IMAGE="$NAME:$TAG-chapter10" \
  --build-arg MAKEFLAGS="-j8" \
  -t $NAME:$TAG-chapter11 \
  . | tee -a ../../log/chapter11.log
