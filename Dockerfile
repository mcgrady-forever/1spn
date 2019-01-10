# A image for electron environment
FROM ubuntu:16.04

ENV WORK_DIR=/work
WORKDIR ${WORK_DIR}

RUN apt-get update && apt-get install -y --no-install-recommends \
        curl \
        apt-utils \
        openssl \
        ca-certificates \
        git \
        g++ \
        make \
        cmake \
        vim \
        libssl-dev \
        libgflags-dev \
        libprotobuf-dev \
        libprotoc-dev \
        protobuf-compiler \
        libleveldb-dev \
        libsnappy-dev && \
        apt-get clean -y

RUN apt-get install -y --no-install-recommends \
        npm=6.4.1 \
        nodejs-legacy=10.15.0

ADD . ${WORK_DIR}