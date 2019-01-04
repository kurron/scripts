#!/usr/bin/env bash

# pip install --user locustio
# connect your browser to http://localhost:8089/ to get to the Locus console

TARGET=${1:-http://localhost:9090}
CMD="/home/vagrant/.local/bin/locust -f locustfile.py --host=${TARGET}"
echo ${CMD}
${CMD}

