FROM node:18-bullseye-slim

LABEL author="androcyber" maintainer="destek@hiverianw.com"

RUN apt -y update
RUN apt -y upgrade
RUN apt -y install ffmpeg iproute2 git sqlite3 libsqlite3-dev python3 python3-dev ca-certificates dnsutils tzdata zip tar curl build-essential libtool
RUN npm install npm@latest -g

RUN useradd -d /home/container -m container
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ./../../run.sh /run.sh
CMD [ "/bin/bash", "/run.sh" ]
