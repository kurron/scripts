#!/usr/bin/env bash

# expecs that an SSH tunnel to the private load balancer has already been started

ID=${1:-4a248c4f5ddeaafec2dab927d9b7af8d}
BODY=${2:-asset-update.json}

CURL="curl --verbose --header Content-Type:application/json --header Accept:application/json --request PUT --data @${BODY} http://localhost:9090/assets/update/${ID}"
echo ${CURL}
${CURL}
