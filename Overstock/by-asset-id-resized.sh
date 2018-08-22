#!/usr/bin/env bash

ID=${1:-fad27d57a0820d7f25e830e4fa01b61e}
CMD="http --verbose --verify no --follow alb-2018072720411595490000001e-1254405108.us-east-2.elb.amazonaws.com/assets/id/${ID}/resized?width=240&height=160"
#CMD="http --verbose --verify no --follow https://www.orfeo.io/assets/id/${ID}/resized?width=1024&height=768"
echo ${CMD}
${CMD}
