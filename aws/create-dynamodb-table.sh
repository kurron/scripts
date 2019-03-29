#!/usr/bin/env bash

# NOTE: rigged up to talk to DynamoDB Local

TIMESTAMP=$(date +%s)

TOPIC_ARN=${1:-arn:aws:sns:us-west-2:437435100506:by-hand-csv-records}
PROFILE=${2:-orfeo-development}

CMD="aws --profile ${PROFILE} dynamodb create-table --endpoint-url http://localhost:8000 --cli-input-json file://create-table.json"

echo ${CMD}
${CMD}
