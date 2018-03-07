#!/bin/bash

PROFILE=${1:-tl-registry}
REGISTRY=${2:-711226717742}
REPOSITORY=${3:-aws-study-group}
POLICY_FILE=${4:-ecr-policy.json}

CMD="aws --profile ${PROFILE} ecr set-repository-policy --registry-id ${REGISTRY} --repository-name ${REPOSITORY} --policy-text file://${POLICY_FILE}"
#CMD="aws --profile ${PROFILE} ecr set-repository-policy --cli-input-json '${FOO}'"
echo ${CMD}
${CMD}
