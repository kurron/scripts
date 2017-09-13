#!/bin/bash

KEY_NAME=${1:-foo}
COMMENT=${2:-kurr@kurron.org}

CMD="ssh-keygen -t rsa -C \"${COMMENT}\" -f ${KEY_NAME}"
echo ${CMD}
${CMD}
