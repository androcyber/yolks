FROM debian:bullseye-slim

LABEL author="androcyber" maintainer="destek@hiverianw.com"

RUN apt -y update
RUN apt -y upgrade
RUN apt -y install gcc g++ libgcc1 libc++-dev gdb libc6 git wget curl tar zip unzip binutils xz-utils liblzo2-2 cabextract iproute2 net-tools netcat telnet libatomic1 libsdl1.2debian libsdl2-2.0-0 libfontconfig libicu67 icu-devtools libunwind8 libssl-dev sqlite3 libsqlite3-dev libmariadbclient-dev-compat libduktape205 locales ffmpeg gnupg2 apt-transport-https software-properties-common ca-certificates liblua5.3-0 libz-dev rapidjson-dev tzdata libevent-dev libzip4 libprotobuf23 libfluidsynth2

RUN useradd -d /home/container -m container
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ./run.sh /run.sh
CMD [ "/bin/bash", "/run.sh" ]
