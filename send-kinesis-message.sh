#!/usr/bin/env bash

# publish a new SQS message 

STREAM_NAME=${1-example-stream}
PARTITION_KEY=${2-does-not-matter}
DATA=${3-${RANDOM}}
DESCRIBE="aws --profile adp-admin kinesis describe-stream --stream-name ${STREAM_NAME}"
PUT="aws --profile adp-admin --region us-west-2 kinesis put-record --stream-name ${STREAM_NAME} --data \"${DATA}\" --partition-key ${PARTITION_KEY}"

#echo ${DESCRIBE}
#${DESCRIBE}

echo ${PUT}
${PUT}
