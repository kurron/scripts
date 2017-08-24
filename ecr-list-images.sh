#!/bin/bash

REPOSITORY=${1:-slurp-e/api-server}

CMD="aws --region us-east-1 ecr list-images --repository-name ${REPOSITORY}"
echo ${CMD}
${CMD}
