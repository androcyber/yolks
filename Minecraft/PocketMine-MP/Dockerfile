FROM debian:bullseye-slim

LABEL author="androcyber" maintainer="destek@hiverianw.com"

RUN useradd -d /home/container -m container
RUN apt -y update
RUN apt -y upgrade

WORKDIR /home/container
COPY ./run.sh /run.sh
CMD [ "/bin/bash", "/run.sh" ]
