#!/usr/bin/env bash

# Creates a new index: https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-aliases.html

PORT=${1:-9200}
INDEX_NAME=${2:-ronbo3}
CMD="curl --request PUT \
	  --header Content-Type:application/json \
          --data @create-index.json  \
	  http://localhost:${PORT}/${INDEX_NAME}"
echo ${CMD}
${CMD}

