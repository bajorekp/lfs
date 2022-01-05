#!/bin/bash

set -o xtrace
set -e

source buildchain/.env

cd host
docker build --progress=plain -t $NAME:$TAG-host . | tee -a ../log/host.log
