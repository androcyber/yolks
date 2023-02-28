FROM ubuntu:18.04

LABEL author="androcyber" maintainer="destek@hiverianw.com"

RUN apt -y update
RUN apt -y upgrade
RUN apt -y install make autoconf automake libtool m4 wget getconf gzip bzip2 bison g++

RUN useradd -d /home/container -m container
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ./run.sh /run.sh
CMD [ "/bin/bash", "/run.sh" ]
