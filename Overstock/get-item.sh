#!/usr/bin/env bash

# reads one item from DyanmoDB
TABLE=${1:-feed_record}
KEY_FILE=${2:-key.json}
PROFILE=${3:-orfeo-development}
CMD="aws --profile ${PROFILE} dynamodb get-item --table-name ${TABLE} --key file://${KEY_FILE}"
echo ${CMD}
${CMD}
