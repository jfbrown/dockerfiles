#!/bin/bash

set -e
set -x

sudo docker build -t ionic .
sudo docker build -t ionic-test-app -f ProjectDockerfile .

sudo docker run -it --rm ionic-test-app /bin/bash
