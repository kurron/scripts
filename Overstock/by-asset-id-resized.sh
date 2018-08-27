#!/usr/bin/env bash

ID=${1:-fad27d57a0820d7f25e830e4fa01b61e}

# staging account
CMD="http --verbose --follow alb-2018072720411595490000001e-1254405108.us-east-2.elb.amazonaws.com/assets/id/${ID}/resized?width=2048&height=768"

# marketing account
#CMD="http --verbose --verify no --follow --print Hh https://www.orfeo.io/assets/id/${ID}/resized?width=2048&height=768"
echo ${CMD}
${CMD}
