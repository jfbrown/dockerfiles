FROM    ubuntu:14.04

RUN     apt-get update
RUN     apt-get install -y couchdb

RUN     mkdir -p /var/run/couchdb

COPY    local.ini /etc/couchdb/local.ini

EXPOSE  5984

