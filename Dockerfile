FROM ubuntu:latest

WORKDIR /code

ADD Makefile .

RUN apt-get update \
#    && apt-get install -y vim \
    && apt-get install -y emacs \
    && apt-get install -y git \
    && apt-get install -y make


