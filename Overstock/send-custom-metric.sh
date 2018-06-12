#!/usr/bin/env bash

R=${RANDOM}
ID=${RANDOM}
CMD="aws --profile personal cloudwatch put-metric-data --namespace ADP --metric-name ImageResizing --unit Milliseconds --value ${R} --dimensions RemoteRead=${R},RemoteWrite=${R},S3Read=${R},S3Write=${R},Resize=${R}"
TOTAL="aws --profile personal cloudwatch put-metric-data --namespace AdpImageResizing --metric-name TotalDuration --unit Milliseconds --value ${RANDOM}"
REMOTE_READ="aws --profile personal cloudwatch put-metric-data --namespace AdpImageResizing --metric-name RemoteRead --unit Milliseconds --value ${RANDOM}"
REMOTE_WRITE="aws --profile personal cloudwatch put-metric-data --namespace AdpImageResizing --metric-name RemoteWrite --unit Milliseconds --value ${RANDOM}"
S3_READ="aws --profile personal cloudwatch put-metric-data --namespace AdpImageResizing --metric-name S3Read --unit Milliseconds --value ${RANDOM}"
S3_WRITE="aws --profile personal cloudwatch put-metric-data --namespace AdpImageResizing --metric-name S3Write --unit Milliseconds --value ${RANDOM}"
RESIZE="aws --profile personal cloudwatch put-metric-data --namespace AdpImageResizing --metric-name Resize --unit Milliseconds --value ${RANDOM}"

echo ${TOTAL}
${TOTAL}

echo ${REMOTE_READ}
${REMOTE_READ}

echo ${REMOTE_WRITE}
${REMOTE_WRITE}

echo ${S3_READ}
${S3_READ}

echo ${S3_WRITE}
${S3_WRITE}

echo ${RESIZE}
${RESIZE}
