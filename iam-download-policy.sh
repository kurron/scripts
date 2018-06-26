#!/usr/bin/env bash

POLICY=${1-arn:aws:iam::975618169286:policy/operations-auto-scaling}
VERSION=${2-v8}
REGION=${3-us-east-2}
CMD="aws iam get-policy-version --policy-arn ${POLICY} --version-id ${VERSION} --region ${REGION}"
echo ${CMD}
${CMD}
