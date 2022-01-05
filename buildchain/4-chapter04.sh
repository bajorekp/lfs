#!/bin/bash

set -o xtrace
set -e

source buildchain/.env

cd lfs-commands/chapter04
docker build \
  --progress=plain \
  --build-arg PARENT_IMAGE="$NAME:$TAG-host" \
  -t $NAME:$TAG-chapter04 \
  . | tee -a ../../log/chapter04.log
