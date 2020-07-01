#!/usr/bin/env bash


TIMESTAMP=$(date +%s)

FILE=${1:-dynamodb-put-item.json}
PROFILE=${2:-orfeo-development}

CMD="aws --profile ${PROFILE} dynamodb put-item --table-name  asset_manager_folders --item file://$FILE"

echo ${CMD}
${CMD}
