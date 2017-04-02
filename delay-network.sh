#!/bin/bash

# https://wiki.linuxfoundation.org/networking/netem

INTERFACE=${1:-enp0s8}

# clear out existing entries
RESET="sudo tc qdisc del dev ${INTERFACE} root"
echo ${RESET}
${RESET}

# introduced a delay that varies accordingo to the normal distribution
DELAY="sudo tc qdisc add dev ${INTERFACE} root netem delay 500ms 100ms distribution normal"
echo ${DELAY}
${DELAY}
