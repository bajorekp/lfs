#!/bin/bash

set -o xtrace
set -e

source buildchain/.env

cd lfs-commands/chapter05
docker build \
  --progress=plain \
  --build-arg PARENT_IMAGE="$NAME:$TAG-chapter04" \
  -t $NAME:$TAG-chapter05 \
  . | tee -a ../../log/chapter05.log
