#!/usr/bin/env bash

echo "Determining image dimensions..."
FILE=${1}
CMD="identify -format %[width]x%[height] ${FILE}"
#echo ${CMD}
DIMENSIONS=$(${CMD})
echo "${FILE} is ${DIMENSIONS}"

