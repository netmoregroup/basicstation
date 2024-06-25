FROM resin/rpi-raspbian:jessie

ENV DEBIAN_FRONTEND=noninteractive

# Add the legacy Raspbian repository to the sources.list file
RUN echo "deb http://legacy.raspbian.org/raspbian jessie main contrib rpi" > /etc/apt/sources.list

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