#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-gempay/gemd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/gemd docker/bin/
cp $BUILD_DIR/src/gem-cli docker/bin/
cp $BUILD_DIR/src/gem-tx docker/bin/
strip docker/bin/gemd
strip docker/bin/gem-cli
strip docker/bin/gem-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
