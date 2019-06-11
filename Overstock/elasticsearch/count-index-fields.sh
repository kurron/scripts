#!/usr/bin/env bash

# https://stackoverflow.com/questions/40586020/get-the-number-of-fields-on-an-index/40655667#40655667 

PORT=${1:-9200}
INDEX=${2:-ronbo}
COUNT=$(curl -s XGET localhost:${PORT}/${INDEX}/_mapping?pretty | grep type | wc -l)
echo "There are ${COUNT} indexed fields in index ${INDEX}"
