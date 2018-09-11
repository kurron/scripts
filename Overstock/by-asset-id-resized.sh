#!/usr/bin/env bash

ID=${1:-0333860bf62c3480c4460d51103dcb22}
KEY=${2:-2Rv5FfKDb96FFgeSPA4mO2Y6mBCtdA4paKp1JeNf}

# staging account
#CMD="http --verbose --follow alb-2018072720411595490000001e-1254405108.us-east-2.elb.amazonaws.com/assets/id/${ID}/resized?width=1024&height=768"
#CMD="http --verbose --follow https://o4l052orob.execute-api.us-east-2.amazonaws.com/adp-api-generated-staging/assets/id/${ID}/resized?width=1024&height=768 x-api-key:${KEY}"
CMD="http --verbose --follow https://staging-adp-api.orfeo.io/adp-api-generated-staging/assets/id/${ID}/resized?width=1024&height=768 x-api-key:${KEY}"

# marketing account
#CMD="http --verbose --verify no --follow --print Hh https://www.orfeo.io/assets/id/${ID}/resized?width=2048&height=768"
echo ${CMD}
${CMD}
