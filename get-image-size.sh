#!/usr/bin/env bash

FILE=${1}
CMD="identify -format %[width]x%[height] ${FILE}"
#echo ${CMD}
DIMENSIONS=$(${CMD})
echo "${FILE} dimensions are ${DIMENSIONS}"

