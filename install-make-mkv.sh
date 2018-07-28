#!/usr/bin/env bash

BINARY=${1:-http://www.makemkv.com/download/makemkv-bin-1.12.3.tar.gz}
SOURCE=${2:-http://www.makemkv.com/download/makemkv-oss-1.12.3.tar.gz}

PACKAGES="sudo apt-get install build-essential pkg-config libc6-dev libssl-dev libexpat1-dev libavcodec-dev libgl1-mesa-dev libqt4-dev zlib1g-dev curl"

echo ${PACKAGES}
${PACKAGES}

GET_BINARY="curl --output /tmp/makemkv-bin.tar.gz ${BINARY}"
GET_SOURCE="curl --output /tmp/makemkv-oss.tar.gz ${SOURCE}"

echo ${GET_BINARY}
${GET_BINARY}

echo ${GET_SOURCE}
${GET_SOURCE}

cd /tmp && tar zxvf /tmp/makemkv-oss.tar.gz && cd /tmp/makemkv-oss-1.12.3 ; ./configure ; make ; sudo make install
cd /tmp && tar zxvf /tmp/makemkv-bin.tar.gz && cd /tmp/makemkv-bin-1.12.3 ; make ; sudo make install
