FROM python:3.11.2-slim-buster

LABEL author="androcyber" maintainer="destek@hiverianw.com"

RUN useradd -d /home/container -m container
RUN apt -y update
RUN apt -y upgrade
RUN apt -y install libffi
RUN apt -y install libnacl
RUN apt -y install python3-dev

WORKDIR /home/container
COPY ./run.sh /run.sh
CMD [ "/bin/bash", "/run.sh" ]
