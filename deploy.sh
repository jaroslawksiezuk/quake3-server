#!/bin/bash

set -a
source .env
set +a

VERSION=$(git rev-parse --short HEAD)

docker build -t $DOCKER_IMAGE:latest -t $DOCKER_IMAGE:$VERSION .

docker image save $DOCKER_IMAGE:$VERSION | ssh $DOKKU_HOST git:load-image $APP_NAME $DOCKER_IMAGE:$VERSION
