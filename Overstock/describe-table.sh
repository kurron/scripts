#!/usr/bin/env bash

TABLE=${1:-feed_record}
PROFILE=${2:-orfeo-development}
CMD="aws --profile ${PROFILE} dynamodb describe-table --table-name ${TABLE}"
echo ${CMD}
${CMD}
