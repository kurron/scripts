#!/usr/bin/env bash

# expecs that an SSH tunnel to the private load balancer has already been started

ASSET_ID=$1
PORT=${2:-9090}

HTTP="http --verbose \
           --json \
           DELETE localhost:${PORT}/assets/id/${ASSET_ID}"
echo ${HTTP}
${HTTP}
echo "Asset ${ASSET_ID} has been deleted via DELETE."

