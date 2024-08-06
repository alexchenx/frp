FROM ubuntu:22.04

ENV VERSION=0.59.0

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* \

RUN wget https://github.com/fatedier/frp/releases/download/v${VERSION}/frp_${VERSION}_linux_amd64.tar.gz && \
    tar -zxf frp_${VERSION}_linux_amd64.tar.gz -C /usr/local/ && \
    rm -rf frp_${VERSION}_linux_amd64.tar.gz

WORKDIR /usr/local/frp_${VERSION}_linux_amd64