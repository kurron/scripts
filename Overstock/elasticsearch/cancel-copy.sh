#!/usr/bin/env bash

# Copy one Elasticsearch index to another: https://www.elastic.co/guide/en/elasticsearch/reference/6.2/docs-reindex.html
# use something like http localhost:9200/_tasks/XYX4ftXJRk-uaVojW1sKWA:12969867 to track the status of the reindex
# to cancel use curl -X POST localhost:9200/_tasks/XYX4ftXJRk-uaVojW1sKWA:12969867/_cancel

PORT=${1:-9200}
TASK_ID=${2:-u0LN45UpTj2y2QRrY0FI1g:23363555}
CMD="curl --request POST localhost:${PORT}/_tasks/${TASK_ID}/_cancel"
echo ${CMD}
${CMD}
