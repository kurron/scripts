#!/usr/bin/env bash

# expecs that an SSH tunnel to the private load balancer has already been started

ASSET_ID=$1
PORT=${2:-9090}
IMAGE=https://picsum.photos/1024/768/?random
CREATED_DATE=$(date --iso-8601=seconds)
INGESTION_DATE=$(date --iso-8601=seconds)

HTTP="http --verbose \
           --json \
           PATCH localhost:${PORT}/assets/merge/${ASSET_ID} \
           created_date=${CREATED_DATE} \
           ingestion_date=${INGESTION_DATE}"
echo ${HTTP}
${HTTP}
echo "Asset ${ASSET_ID} has been modified via PATCH."

