FROM ubuntu:24.04

ENV TERM=xterm LC_ALL=en_US LANGUAGE=en_US LANG=en_US.UTF-8
ENV DEBIAN_FRONTEND=noninteractive
ENV PATH=/root/toolchain-rpi/bin:$PATH

RUN apt-get update && \
        apt-get install --no-install-recommends -y locales language-pack-en build-essential make git file gcc wget ca-certificates && \
        update-ca-certificates && \
        locale-gen $LANGUAGE $LANG



# toolchain
# ADD "https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Buster/GCC%2010.3.0/Raspberry%20Pi%203A%2B%2C%203B%2B%2C%204/cross-gcc-10.3.0-pi_3%2B.tar.gz/download" /opt
RUN wget -O /opt/cross-gcc-10.3.0-pi_3%2B.tar.gz "https://docs.senetco.io/downloads/Toolchain/cross-gcc-10.3.0-pi_3%2B.tar.gz"
RUN tar xvzf /opt/cross-gcc-10.3.0-pi_3%2B.tar.gz -C /opt && rm /opt/cross-gcc-10.3.0-pi_3%2B.tar.gz
RUN ln -s /opt/cross-pi-gcc-10.3.0-2 /opt/cross-pi-gcc && ln -s /opt/cross-pi-gcc /root/toolchain-rpi

USER root
WORKDIR /root
