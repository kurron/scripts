#!/usr/bin/env bash

BODY=${1:-./adp-event.json}
CMD="http --verify no --json POST https://nkkmfsfq10.execute-api.us-west-1.amazonaws.com/adpevents/ @${BODY}"
echo ${CMD}
${CMD}
