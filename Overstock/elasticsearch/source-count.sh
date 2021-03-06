#!/usr/bin/env bash

# See how many assets have ids 

INDEX=${1:-adp-assets}
DEFINITION=${2:-source-count.json}
PORT=9200
CMD="curl --silent \
	  --show-error \
	  --request GET \
	  --header Content-Type:application/json \
          --data @${DEFINITION}  \
	  http://localhost:${PORT}/${INDEX}/asset/_search"
#echo ${CMD}
${CMD} | python -m json.tool
