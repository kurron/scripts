#!/usr/bin/env bash

# pull down the Elasticsearch mapping from an index

PORT=${1:-9200}
INDEX=${2:-adp-assets}
TYPE=${3:-asset}
#CMD="http localhost:${PORT}/${INDEX}/${TYPE}/_mapping"
CMD="curl --silent http://localhost:${PORT}/${INDEX}/${TYPE}/_mapping?pretty=true"
#echo ${CMD}
${CMD} | less
