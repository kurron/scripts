#!/usr/bin/env bash

# expecs that an SSH tunnel to the private load balancer has already been started

PORT=${1:-9090}
IMAGE=${2:-https://picsum.photos/1024/768/?random}
SOURCE_ID=$(date +%s)

HTTP="http --verbose \
           --json \
           POST localhost:${PORT}/assets/ \
           image_url=${IMAGE} \
           source_id=${SOURCE_ID} \
           asset_type=IMAGE \
           asset_state=ACTIVE \
           source=ADP \
           references:={} \
           attributes:={}"
echo ${HTTP}
${HTTP}
echo "Asset with source id of ${SOURCE_ID} has been created."

