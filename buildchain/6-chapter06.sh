#!/bin/bash

set -o xtrace
set -e

source buildchain/.env

cd lfs-commands/chapter06
docker build \
  --progress=plain \
  --build-arg PARENT_IMAGE="$NAME:$TAG-chapter05" \
  --build-arg MAKEFLAGS="-j8" \
  -t $NAME:$TAG-chapter06 \
  . | tee -a ../../log/chapter06.log
