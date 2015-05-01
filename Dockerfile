FROM ubuntu:14.04
MAINTAINER Satnam Singh "satnam@raintown.org"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get clean

RUN cd / && \
    curl -O https://download.elastic.co/kibana/kibana/kibana-4.0.2-linux-x64.tar.gz && \
    tar xf kibana-4.0.2-linux-x64.tar.gz && \
    rm kibana-4.0.2-linux-x64.tar.gz

EXPOSE 5601
CMD ["/kibana-4.0.2-linux-x64/bin/kibana"]