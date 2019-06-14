#!/usr/bin/env bash

# Creates a new index: https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-aliases.html

PORT=${1:-9200}
INDEX_NAME=${2:-ronbo3}
DEFINITION=${3:-create-index.json}
CMD="curl --request PUT \
	  --header Content-Type:application/json \
          --data @${DEFINITION}  \
	  http://localhost:${PORT}/${INDEX_NAME}"
echo ${CMD}
${CMD}
