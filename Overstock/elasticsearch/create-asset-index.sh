#!/usr/bin/env bash

# creates a new asset index for development purposes

PORT=${1:-9200}
INDEX_NAME=${2:-ronbo}
INDEX_DEFINITION=${3:-create-asset-index.json}
ALIAS_DEFINITION=${4:-asset-alias.json}

CREATE="curl --request PUT \
	      --header Content-Type:application/json \
          --data @${INDEX_DEFINITION}  \
	      http://localhost:${PORT}/${INDEX_NAME}"
echo ${CREATE}
${CREATE}


ALIAS="curl --request POST \
	      --header Content-Type:application/json \
          --data @${ALIAS_DEFINITION}  \
	      http://localhost:${PORT}/_aliases"
echo ${ALIAS}
${ALIAS}

INDICES="http localhost:${PORT}/_cat/indices?v"
echo ${INDICES}
${INDICES}

LIST="http http://localhost:${PORT}/_aliases"
echo ${LIST}
${LIST}
