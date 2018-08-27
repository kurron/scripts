#!/bin/bash

REGISTRY=${1:-975618169286}
PROFILE=${2:-orfeo-production}
REGION=${3:-us-east-1}

#CMD="aws --profile ${PROFILE} --region ${REGION} ecr describe-repositories --registry-id ${REGISTRY}"
CMD="aws --profile ${PROFILE} ecr describe-repositories --registry-id ${REGISTRY}"
echo ${CMD}
${CMD}
