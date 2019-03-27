#!/usr/bin/env bash

PROFILE=${1:-orfeo-staging}
REGION=${2:-us-east-2}
STREAM_NAME=${3:-adpassetingest}
ITERATOR_TYPE=${4:-TRIM_HORIZON}

GET_SHARD_ID="aws --profile ${PROFILE} --region ${REGION} kinesis list-shards --stream-name ${STREAM_NAME}"
#echo ${GET_SHARD_ID}
SHARD_ID=$(${GET_SHARD_ID} | jq --compact-output --raw-output '.Shards[0].ShardId')

GET_ITERATOR="aws --profile ${PROFILE} --region ${REGION} kinesis get-shard-iterator --stream-name ${STREAM_NAME} --shard-id ${SHARD_ID}  --shard-iterator-type ${ITERATOR_TYPE}"
#echo ${GET_ITERATOR}
SHARD_ITERATOR=$(${GET_ITERATOR} | jq --compact-output --raw-output '.ShardIterator')

GET_RECORDS="aws --profile ${PROFILE} --region ${REGION} kinesis get-records --shard-iterator ${SHARD_ITERATOR}"
#echo ${GET_RECORDS}
${GET_RECORDS}
