#!/usr/bin/env bash

POLICY=${1-arn:aws:iam::975618169286:policy/operations-auto-scaling}
REGION=${2-us-east-2}
CMD="aws iam get-policy --policy-arn ${POLICY} --region ${REGION}"
echo ${CMD}
${CMD}
