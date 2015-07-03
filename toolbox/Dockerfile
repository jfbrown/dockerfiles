FROM ubuntu:14.04
MAINTAINER Jack Brown

RUN apt-get update && apt-get install -y htop vim git
RUN apt-get install -y aptitude

WORKDIR /root
RUN git clone https://github.com/jfbrown/dotfiles.git
WORKDIR /root/dotfiles
RUN chmod +x ./dotfiles.sh
RUN ./dotfiles.sh install all
RUN ./dotfiles.sh setup all

WORKDIR /root

ENTRYPOINT /bin/bash

