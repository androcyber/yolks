FROM debian:bullseye-slim

LABEL author="androcyber" maintainer="destek@hiverianw.com"

COPY ./././run.sh /run.sh

RUN apt -y update
RUN apt -y upgrade

RUN useradd -d /home/container -m container
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

CMD [ "/bin/bash", "/run.sh" ]
