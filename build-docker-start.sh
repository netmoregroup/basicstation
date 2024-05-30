#!/bin/bash -e

cd "$( dirname "${BASH_SOURCE[0]}" )"

docker run --rm --name bs-compile -v $PWD:/basicstation ubuntu:24.04 /basicstation/build-compile.sh

echo
echo "Built:"
realpath build-rpi-std/bin/station
