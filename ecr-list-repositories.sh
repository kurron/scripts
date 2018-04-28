#!/bin/bash

REGISTRY=${1:-711226717742}
PROFILE=${2:-default}
REGION=${3:-us-west-2}

#CMD="aws --profile ${PROFILE} --region ${REGION} ecr describe-repositories --registry-id ${REGISTRY}"
CMD="aws --profile ${PROFILE} ecr describe-repositories --registry-id ${REGISTRY}"
echo ${CMD}
${CMD}
