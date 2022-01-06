#!/bin/bash

set -o xtrace
set -e

source buildchain/.env

docker push $NAME:$TAG-host
docker push $NAME:$TAG-chapter04
docker push $NAME:$TAG-chapter05
docker push $NAME:$TAG-chapter06
docker push $NAME:$TAG-chapter07
docker push $NAME:$TAG-chapter08
docker push $NAME:$TAG-chapter09
docker push $NAME:$TAG-chapter10 
docker push $NAME:$TAG
docker push $NAME:latest
