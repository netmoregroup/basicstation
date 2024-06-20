# Fork changes

## New files
* `netmore/` (this directory)
* `.gitignore`
* `Jenkinsfile`

# Toolchain
The generic cross-compiler package `gcc-arm-linux-gnueabihf` does not use the correct
version of `glibc`, so we'll download one: https://sourceforge.net/projects/raspberry-pi-cross-compilers/

## Compile

```shell
docker build -t bs-compile:buster .
docker run --rm -v $PWD/..:/basicstation bs-compile:buster /bin/bash -c 'cd /basicstation; rm -fr build-local build-rpi-std; make platform=rpi variant=std'
file ../build-rpi-std/bin/station
```
