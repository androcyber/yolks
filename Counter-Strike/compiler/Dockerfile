FROM ubuntu:18.04

LABEL author="androcyber" maintainer="destek@hiverianw.com"

LABEL org.opencontainers.image.source="https://github.com/pterodactyl/yolks"

RUN apt -y update
RUN apt -y upgrade
RUN apt -y install curl
RUN apt -y install tar
RUN apt -y install lib32gcc1
RUN apt -y install screen

RUN useradd -d /home/container -m container

RUN cd /tmp/
RUN curl -sSL https://github.com/gorcon/rcon-cli/releases/download/v0.10.2/rcon-0.10.2-amd64_linux.tar.gz
RUN tar xf rcon-0.10.2-amd64_linux.tar.gz
RUN mv rcon-0.10.2-amd64_linux/rcon /usr/local/bin/

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

CMD [ "/bin/bash" ]
