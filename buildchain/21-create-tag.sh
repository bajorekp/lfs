#!/bin/bash

set -o xtrace
set -e

source buildchain/.env

docker tag $NAME:$TAG-chapter11 $NAME:$TAG
docker tag $NAME:$TAG $NAME:latest
