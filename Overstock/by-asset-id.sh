#!/usr/bin/env bash

ID=${1:-d4c502d66bc7e603aab1581d7e792d78}
CMD="http --verbose --verify no alb-2018072720411595490000001e-1254405108.us-east-2.elb.amazonaws.com/assets/id/${ID}"
${CMD}
