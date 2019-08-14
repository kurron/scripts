#!/usr/bin/env bash

# Copy one Elasticsearch index to another: https://www.elastic.co/guide/en/elasticsearch/reference/6.2/docs-reindex.html
# use something like http localhost:9200/_tasks/XYX4ftXJRk-uaVojW1sKWA:12969867 to track the status of the reindex
# to cancel use curl -X POST localhost:9200/_tasks/XYX4ftXJRk-uaVojW1sKWA:12969867/_cancel

INDEX=${1:-assets7}
PORT=${2:-9200}
CMD="http DELETE http://localhost:${PORT}/${INDEX}"
echo ${CMD}
${CMD}
