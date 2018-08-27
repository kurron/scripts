#!/bin/bash

REPOSITORY=${1:-adpimageconversion}
PROFILE=${2:-orfeo-production}

CMD="aws --profile ${PROFILE} --region us-east-1 ecr list-images --repository-name ${REPOSITORY}"
echo ${CMD}
${CMD}
