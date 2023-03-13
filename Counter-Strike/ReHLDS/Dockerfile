FROM ubuntu:18.04

COPY .../run.sh /run.sh

LABEL author="androcyber" maintainer="destek@hiverianw.com"

RUN apt -y update
RUN apt -y upgrade
RUN apt -y install lib32gcc1

RUN useradd -d /home/container -m container
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

CMD [ "/bin/bash", "/run.sh" ]
