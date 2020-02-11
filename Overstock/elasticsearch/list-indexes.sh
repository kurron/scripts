#!/usr/bin/env bash

# list Elasticsearch indexes

PORT=${1:-9200}
#CMD="http localhost:${PORT}/_cat/indices?v&s=docs.count:desc"
#CMD="curl --silent localhost:${PORT}/_cat/indices?v&s=docs.count:desc&pretty=true"
CMD="curl --silent http://localhost:${PORT}/_cat/indices?v&s=pri.store.size:desc&pretty=true"
echo ${CMD}
${CMD}
