#!/bin/bash

set -o xtrace
set -e

source buildchain/.env

docker tag $NAME:$TAG-chapter10 $NAME:$TAG
docker tag $NAME:$TAG-chapter10 $NAME:latest
