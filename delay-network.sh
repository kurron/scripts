#!/bin/bash

# https://wiki.linuxfoundation.org/networking/netem

# can try testing via speedtest-cli --json

# Vagrant/VirtualBox is odd.  Two interfaces are in play, one for LAN and one for WAN.
# WAN: enp0s3
# LAN: enp0s8

INTERFACE=${1:-enp0s8}
BASE=${2:-200ms}
VARIANCE=${3:-100ms}
CORRELATION=${4:-20%}

# clear out existing entries
RESET="sudo tc qdisc del dev ${INTERFACE} root"
echo ${RESET}
${RESET}

# introduce a delay to ALL packets
DELAY="sudo tc qdisc add dev ${INTERFACE} root netem delay ${BASE}"

# introduce a delay that varies according to the normal distribution (closer to real-life)
#DELAY="sudo tc qdisc add dev ${INTERFACE} root netem delay ${BASE} ${VARIANCE} distribution normal"

# introduce a delay that randomly varies
#DELAY="sudo tc qdisc add dev ${INTERFACE} root netem delay ${BASE} ${VARIANCE} ${CORRELATION}"
echo ${DELAY}
${DELAY}
