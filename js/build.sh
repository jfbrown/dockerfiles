#!/bin/bash

sudo docker build -t js .

sudo docker run -it --rm \
  -v `pwd`:/usr/src \
  js /bin/bash

