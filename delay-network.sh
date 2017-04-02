#!/bin/bash

# https://wiki.linuxfoundation.org/networking/netem

INTERFACE=${1:-enp0s8}
BASE=${2:-500ms}
VARIANCE=${3:-100ms}

# clear out existing entries
RESET="sudo tc qdisc del dev ${INTERFACE} root"
echo ${RESET}
${RESET}

# introduced a delay that varies accordingo to the normal distribution
DELAY="sudo tc qdisc add dev ${INTERFACE} root netem delay ${BASE} ${VARIANCE} distribution normal"
echo ${DELAY}
${DELAY}
