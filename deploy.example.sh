#!/bin/bash

# Deploy script for Quake 3 Arena server to run a docker image on Dokku

VERSION=$(git rev-parse --short HEAD)

docker build -t games/quake3-server:latest -t games/quake3-server:$VERSION .

docker image save games/quake3-server:$VERSION | ssh dokku@dokku.local git:load-image quake3-server games/quake3-server:$VERSION
