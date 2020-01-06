FROM debian:stretch
LABEL maintainer="Gem Developers <dev@gem.org>"
LABEL description="Dockerised GemCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
