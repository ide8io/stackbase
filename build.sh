#!/bin/bash

set -e

gitver=$(git describe --always --tags --dirty)

docker build -t stackbase --build-arg GITVER=${gitver} .
docker tag stackbase ide8/base

echo "To publish on docker hub run: docker push ide8/base"

