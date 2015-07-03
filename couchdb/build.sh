#!/bin/bash

set -e

sudo docker build -t couchdb .

sudo docker run -it --rm -p 5984:5984 couchdb /bin/bash
