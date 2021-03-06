#!/bin/bash

# https://wiki.linuxfoundation.org/networking/netem

INTERFACE=${1:-enp0s8}
BASE=${2:-10.0%}

# clear out existing entries
RESET="sudo tc qdisc del dev ${INTERFACE} root"
echo ${RESET}
${RESET}

# introduce random packet corruption
CORRUPT="sudo tc qdisc add dev ${INTERFACE} root netem corrupt ${BASE}"
echo ${CORRUPT}
${CORRUPT}
