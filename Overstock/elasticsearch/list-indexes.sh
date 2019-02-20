#!/usr/bin/env bash

# list Elasticsearch indexes

PORT=${1:-9200}
CMD="http localhost:${PORT}/_cat/indices?v"
echo ${CMD}
${CMD}
