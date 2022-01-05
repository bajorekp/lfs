#!/bin/bash

set -e

source buildchain/.env

IMAGE=$1
shift
COMMAND=$@

echo "VERSION: $NAME:$TAG"
echo "IMAGE: $IMAGE"
echo "COMMAND: $COMMAND"

docker run --rm -it $NAME:$TAG-$IMAGE $COMMAND
