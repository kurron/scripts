#!/usr/bin/env bash

echo To install the package, run sudo apt-get install iperf3

SERVER=${1:-iperf.he.net}

CMD="iperf3 --version4 --time 30 --client ${SERVER}"
echo ${CMD}
${CMD}
