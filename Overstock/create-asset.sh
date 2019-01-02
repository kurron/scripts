#!/usr/bin/env bash

# expecs that an SSH tunnel to the private load balancer has already been started

BODY=${1:-asset-create.json}

CURL="curl --verbose --header Content-Type:application/json --header Accept:application/json --request POST --data @${BODY} http://localhost:9090/assets/"
echo ${CURL}
${CURL}
