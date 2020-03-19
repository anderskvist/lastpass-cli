FROM ubuntu:18.04

RUN apt-get update && apt-get install -y bash-completion build-essential cmake libcurl4 libcurl3-openssl-dev libssl1.0.0 libssl-dev libxml2 libxml2-dev pkg-config ca-certificates xclip

COPY . /data

WORKDIR /data

RUN make && make install
