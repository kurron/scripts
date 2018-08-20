#!/usr/bin/env bash

ID=${1:-f2449936adb2e36d2e65ecef351b59c6}
CMD="http --verbose --verify no --follow alb-2018072720411595490000001e-1254405108.us-east-2.elb.amazonaws.com/assets/id/${ID}/resized?width=1024&height=768"
echo ${CMD}
${CMD}
