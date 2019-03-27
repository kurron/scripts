#!/usr/bin/env bash

TIMESTAMP=$(date +%s)

TOPIC_ARN=${1:-arn:aws:sns:us-west-2:437435100506:by-hand-csv-records}
PROFILE=${2:-orfeo-development}

CMD="aws --profile ${PROFILE} sns publish --topic-arn ${TOPIC_ARN} --subject Testing --message file://sns-message.txt"

echo ${CMD}
${CMD}
