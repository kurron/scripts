#!/usr/bin/env bash

# NOTE: rigged up to talk to DynamoDB Local

TIMESTAMP=$(date +%s)

TABLE_NAME=${1:-sku-to-product}
PROFILE=${2:-orfeo-development}

#aws --profile orfeo-development dynamodb delete-table --endpoint-url http://localhost:8000 --table-name sku-to-product
CMD="aws --profile ${PROFILE} dynamodb delete-table --endpoint-url http://localhost:8000 --table-name ${TABLE_NAME}"

echo ${CMD}
${CMD}
