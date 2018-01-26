FROM debian:stretch
ARG GITVER=unversioned
RUN apt update -y && apt upgrade -y && apt install -y \
    make \
    git \
    && apt-get clean && apt-get -y autoremove && rm -rf /var/lib/apt/lists/*
RUN useradd -ms /bin/bash user
RUN mkdir /ide8
RUN echo "IDE8 Base image version: $GITVER" > /ide8/image_version

