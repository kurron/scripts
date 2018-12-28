#!/usr/bin/env bash

ID=${1:-d4c502d66bc7e603aab1581d7e792d78}
CMD="http --verbose localhost:9090/assets/id/${ID}"
${CMD}
