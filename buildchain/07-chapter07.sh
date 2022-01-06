#!/bin/bash

set -o xtrace
set -e

source buildchain/.env

cd lfs-commands/chapter07
docker build \
  --progress=plain \
  --build-arg PARENT_IMAGE="$NAME:$TAG-chapter06" \
  --build-arg MAKEFLAGS="-j8" \
  -t $NAME:$TAG-chapter07 \
  . | tee -a ../../log/chapter07.log
