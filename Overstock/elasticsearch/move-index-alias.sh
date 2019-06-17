#!/usr/bin/env bash

# Create a stable name for an index: https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-aliases.html

PORT=${1:-9200}
DEFINITION=${2:-move-alias.json}
CMD="curl --request POST \
	  --header Content-Type:application/json \
          --data @${DEFINITION}  \
	  http://localhost:${PORT}/_aliases"
echo ${CMD}
${CMD}
