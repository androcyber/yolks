FROM ubuntu:18.04

LABEL author="androcyber" maintainer="destek@hiverianw.com"

RUN useradd -d /home/container -m container
RUN apt -y update
RUN apt -y upgrade
RUN apt -y install libcurl4

WORKDIR /home/container
COPY ./run.sh /run.sh
CMD [ "/bin/bash", "/run.sh" ]
