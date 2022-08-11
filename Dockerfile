FROM ttbb/base:jdk11

WORKDIR /opt/sh

ENV NIFI_HOME /opt/sh/nifi

ARG version=1.17.0
ARG download=1.17.0-bin

RUN wget -q https://downloads.apache.org/nifi/$version/nifi-$download.tar.gz  && \
mkdir -p /opt/sh/nifi && \
tar -xf nifi-$download.tar.gz -C /opt/sh/nifi --strip-components 1 && \
rm -rf nifi-$download.tar.gz && \
rm -rf /opt/sh/nifi/bin/*.bat && \
rm -rf /opt/sh/nifi/docs

WORKDIR /opt/sh/nifi
