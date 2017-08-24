#!/bin/bash

REGISTRY=${1:-711226717742}

CMD="aws --region us-east-1 ecr describe-repositories --registry-id ${REGISTRY}"
echo ${CMD}
${CMD}
