#!/usr/bin/env bash

PORT="${1:-3306}"
BASTION="${2:-ec2-34-224-213-164.compute-1.amazonaws.com}"
TARGET="${3:-development.c6haaml1aowk.us-east-1.rds.amazonaws.com}"
KEY="${4:-~/.ssh/bastion}"
USER="${5:-ec2-user}"

# if you don't specify ipv4, it will fail trying to bind to an ipv6 address
CMD="ssh -i ${KEY} -4 -L ${PORT}:${TARGET}:${PORT} ${USER}@${BASTION}"
echo ${CMD}
${CMD}
