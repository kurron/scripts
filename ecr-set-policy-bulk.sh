#!/usr/bin/env bash

# This scrip will apply the specified polisty file to all repositories within the specified registry

# arguments that can be passed into the script and their defaults

# aws cli profile name to use, generaed via aws configure --profile
PROFILE=${1:-default}

# account number that owns the registry
REGISTRY=${2:-711226717742}

# name of the JSON policy file to be applied
POLICY_FILE=${3:-ecr-policy.json}

# fetch the names of all repositories in the registry
REPOSITORIES=$(aws --profile ${PROFILE} ecr describe-repositories --registry-id ${REGISTRY})

# apply the policy to each repository
for row in $(echo "${REPOSITORIES}" | jq --compact-output --raw-output '.repositories[].repositoryName') ; do
    echo Processing ${row}
    RESULT=$(aws --profile ${PROFILE} ecr set-repository-policy --registry-id ${REGISTRY} --repository-name ${row} --policy-text file://${POLICY_FILE})
    #echo ${RESULT}
done
