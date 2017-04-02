#!/bin/bash

# https://wiki.linuxfoundation.org/networking/netem

INTERFACE=${1:-enp0s8}
BASE=${2:-50.0%}
VARIANCE=${3:-10%}

# clear out existing entries
RESET="sudo tc qdisc del dev ${INTERFACE} root"
echo ${RESET}
${RESET}

# introduced packet loss that varies
DROP="sudo tc qdisc add dev ${INTERFACE} root netem loss ${BASE} ${VARIANCE}"
echo ${DROP}
${DROP}
