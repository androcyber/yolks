FROM ubuntu:18.04

LABEL author="androcyber" maintainer="destek@hiverianw.com"

LABEL org.opencontainers.image.source="https://github.com/pterodactyl/yolks"

RUN useradd -d /home/container -m container
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

RUN apt -y update
RUN apt -y upgrade
RUN apt -y install lib32gcc1

COPY ./Counter-Strike/compiler/run.sh /home/container/run.sh
CMD [ "/bin/bash", "/run.sh" ]
