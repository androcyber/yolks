FROM ubuntu:18.04

LABEL author="androcyber" maintainer="destek@hiverianw.com"

LABEL org.opencontainers.image.source="https://github.com/pterodactyl/yolks"

RUN apt -y update
RUN apt -y upgrade
RUN apt -y install lib32gcc1
RUN apt -y install curl
RUN apt -y install tar
RUN apt -y install zip
RUN apt -y install unzip

RUN useradd -d /home/container -m container

## install rcon
RUN 		cd /tmp/ \
			&& curl -sSL https://github.com/gorcon/rcon-cli/releases/download/v0.10.2/rcon-0.10.2-amd64_linux.tar.gz > rcon.tar.gz \
			&& tar xvf rcon.tar.gz \
			&& mv rcon-0.10.2-amd64_linux/rcon /usr/local/bin/

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh
CMD [ "/bin/bash", "/entrypoint.sh" ]
