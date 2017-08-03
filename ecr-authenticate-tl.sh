#!/bin/bash

# IMPORTANT: requires that you have run aws configure --profile tl-registry to create a new profile with correct keys

RAW=$(aws ecr get-login --no-include-email --profile tl-registry)
echo ${RAW}

echo 

REPLACED=$(echo ${RAW} | sed "s/https:\/\/711226717742.dkr.ecr.us-east-1.amazonaws.com/registry.transparent.com/g")
echo ${REPLACED}

${RAW}
${REPLACED}
