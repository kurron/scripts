#!/usr/bin/env bash

# Copy one Elasticsearch index to another: https://www.elastic.co/guide/en/elasticsearch/reference/6.2/docs-reindex.html
# use something like http localhost:9200/_tasks/XYX4ftXJRk-uaVojW1sKWA:12969867 to track the status of the reindex
# to cancel use curl -X POST localhost:9200/_tasks/XYX4ftXJRk-uaVojW1sKWA:12969867/_cancel

PORT=${1:-9200}
CMD="curl --request POST \
	  --header Content-Type:application/json \
          --data @reindex.json  \
	  http://localhost:${PORT}/_reindex?wait_for_completion=false"
echo ${CMD}
${CMD}
