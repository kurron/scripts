#!/usr/bin/env bash

# list Elasticsearch indexes

PORT=${1:-9200}
CMD="http localhost:${PORT}/_cat/indices?v&s=docs.count:desc"
echo ${CMD}
${CMD}
