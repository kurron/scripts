#!/usr/bin/env bash

PROGNAME=$(basename $0)
error_exit()
{
          echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
          exit 1
}

VERSION=1.16.3
BINARY="http://www.makemkv.com/download/makemkv-bin-${VERSION}.tar.gz"
SOURCE="http://www.makemkv.com/download/makemkv-oss-${VERSION}.tar.gz"
PACKAGES="sudo apt-get install build-essential pkg-config libc6-dev libssl-dev libexpat1-dev libavcodec-dev libgl1-mesa-dev qtbase5-dev zlib1g-dev curl"

echo ${PACKAGES}
${PACKAGES} || error_exit "Unable to install required packages."

GET_BINARY="curl --output /tmp/makemkv-bin.tar.gz ${BINARY}" 
GET_SOURCE="curl --output /tmp/makemkv-oss.tar.gz ${SOURCE}"

echo ${GET_BINARY}
${GET_BINARY}  || error_exit "Unable to get binaries."

echo ${GET_SOURCE}
${GET_SOURCE}  || error_exit "Unable to install source files."

cd /tmp && tar zxvf /tmp/makemkv-oss.tar.gz && cd /tmp/makemkv-oss-${VERSION} && ./configure && make && sudo make install
cd /tmp && tar zxvf /tmp/makemkv-bin.tar.gz && cd /tmp/makemkv-bin-${VERSION} && make && sudo make install
