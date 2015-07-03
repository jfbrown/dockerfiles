#!/bin/bash

mkdir -p ./build
sudo rm -rf ./build/*

docker build -t jackb/cjdns-build:latest .
docker run --rm -v `pwd`/build:/build --entrypoint '/bin/bash -c "cp /src/cjdns/cjdroute /build/cjdroute"' jackb/cjdns-build:latest

