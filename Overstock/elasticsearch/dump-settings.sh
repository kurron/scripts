#!/usr/bin/env bash

# pull down the Elasticsearch mapping from an index

PORT=${1:-9200}
INDEX=${2:-adp-data}
CMD="http localhost:${PORT}/${INDEX}/_settings"
echo ${CMD}
${CMD}
