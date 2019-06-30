#!/usr/bin/env bash

VERSION=1.14.4
BINARY="http://www.makemkv.com/download/makemkv-bin-${VERSION}.tar.gz"
SOURCE="http://www.makemkv.com/download/makemkv-oss-${VERSION}.tar.gz"

PACKAGES="sudo apt-get install build-essential pkg-config libc6-dev libssl-dev libexpat1-dev libavcodec-dev libgl1-mesa-dev libqt4-dev zlib1g-dev curl"

echo ${PACKAGES}
${PACKAGES}

GET_BINARY="curl --output /tmp/makemkv-bin.tar.gz ${BINARY}"
GET_SOURCE="curl --output /tmp/makemkv-oss.tar.gz ${SOURCE}"

echo ${GET_BINARY}
${GET_BINARY}

echo ${GET_SOURCE}
${GET_SOURCE}

cd /tmp && tar zxvf /tmp/makemkv-oss.tar.gz && cd /tmp/makemkv-oss-${VERSION} ; ./configure ; make ; sudo make install
cd /tmp && tar zxvf /tmp/makemkv-bin.tar.gz && cd /tmp/makemkv-bin-${VERSION} ; make ; sudo make install
