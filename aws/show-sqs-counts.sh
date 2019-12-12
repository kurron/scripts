#!/usr/bin/env bash


QUEUE_URL=${1:-https://sqs.us-east-2.amazonaws.com/437435100506/adp-supplier-db-ingestion-commands-staging}
PROFILE=${2:-orfeo-staging}

CMD="aws sqs get-queue-attributes --profile ${PROFILE} --queue-url ${QUEUE_URL} --attribute-names ApproximateNumberOfMessages"

echo ${CMD}
${CMD}
