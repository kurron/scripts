#!/usr/bin/env bash

# pull down the Elasticsearch mapping from an index

PORT=${1:-9200}
INDEX=${2:-ronbo}
TYPE=${3:-asset}
CMD="http localhost:${PORT}/${INDEX}/${TYPE}/_mapping"
echo ${CMD}
${CMD}
