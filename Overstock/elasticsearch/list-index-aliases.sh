#!/usr/bin/env bash

# List index aliases: https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-aliases.html 

PORT=${1:-9200}
#CMD="http http://localhost:${PORT}/_aliases"
CMD="curl --silent http://localhost:${PORT}/_aliases?pretty=true"
echo ${CMD}
${CMD}
