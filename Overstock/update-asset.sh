#!/usr/bin/env bash

# expecs that an SSH tunnel to the private load balancer has already been started

ASSET_ID=$1
SOURCE_ID=$2
PORT=${3:-9090}
IMAGE=https://picsum.photos/1024/768/?random
CREATED_DATE=$(date +%s)
INGESTION_DATE=$(date +%s)

HTTP="http --verbose \
           --json \
           PATCH localhost:${PORT}/assets/merge/${ASSET_ID} \
           source_id=${SOURCE_ID} \
           image_url=${IMAGE} \
           created_date=${CREATED_DATE} \
           ingestion_date=${INGESTION_DATE} \
           asset_type=IMAGE \
           asset_state=ACTIVE \
           source=ADP \
           references:={} \
           attributes:={}"
echo ${HTTP}
${HTTP}
echo "Asset ${ASSET_ID} has been modified via PATCH."

