#!/usr/bin/env bash

INTERFACE=${1:-enp0s31f6}

CMD="sudo tcpdump -i ${INTERFACE} -n udp port 53"
echo ${CMD}
${CMD}
