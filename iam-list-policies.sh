#!/usr/bin/env bash

SCOPE=${1-Local}
REGION=${2-us-east-2}
CMD="aws iam list-policies --scope ${SCOPE} --region ${REGION}"
echo ${CMD}
${CMD}
