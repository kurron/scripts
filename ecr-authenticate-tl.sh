#!/bin/bash

RAW=$(aws ecr get-login --region us-east-1)
echo ${RAW}

echo 

REPLACED=$(echo ${RAW} | sed "s/https:\/\/711226717742.dkr.ecr.us-east-1.amazonaws.com/registry.transparent.com/g")
echo ${REPLACED}

${RAW}
${REPLACED}
