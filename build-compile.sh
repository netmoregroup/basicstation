#!/bin/bash -e

apt-get update
apt-get install -y gcc-arm-linux-gnueabihf make git gcc file

cd /basicstation
mkdir -p /root/toolchain-rpi
ln -s /usr/bin /root/toolchain-rpi/bin
rm -fr build-local build-rpi-std
make platform=rpi variant=std

file build-rpi-std/bin/station
