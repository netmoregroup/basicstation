FROM balenalib/rpi-raspbian:jessie

ENV TERM=xterm LC_ALL=en_US LANGUAGE=en_US LANG=en_US.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

# Add the legacy Raspbian repository to the sources.list file
RUN echo "deb http://legacy.raspbian.org/raspbian jessie main contrib non-free rpi" > /etc/apt/sources.list

# Install dependencies
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    build-essential \
    locales \   
    cmake \
    git \
    wget \
    curl \
    vim \
    python3 \
    python3-pip \
    ca-certificates \
    gcc \    
    && apt-get clean

USER root
WORKDIR /root