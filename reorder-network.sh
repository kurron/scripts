#!/bin/bash

# https://wiki.linuxfoundation.org/networking/netem

INTERFACE=${1:-enp0s8}
DELAY=${2:-100ms}
BASE=${3:-25%}
VARIANCE=${4:-50%}

# clear out existing entries
RESET="sudo tc qdisc del dev ${INTERFACE} root"
echo ${RESET}
${RESET}

# reorder packets randomly 
REORDER="sudo tc qdisc add dev ${INTERFACE} root netem delay ${DELAY} reorder ${BASE} ${VARIANCE}"
echo ${REORDER}
${REORDER}
