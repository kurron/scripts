#!/bin/bash

CDN=${1:-d1phq4yrkrmw68.cloudfront.net}
ELB=${2:-internal-Phoen-LoadB-ZMUPOXFQ3RGN-477287101.us-west-2.elb.amazonaws.com}
DELAY=${3:-1}

#CMD="http --verbose --follow https://${CDN}/alpha/ elb==${ELB} port==80 endpoint==/bravo/"
CMD="http --follow https://${CDN}/alpha/ elb==${ELB} port==80 endpoint==/bravo/"

for (( ; ; )) 
do
#  echo ${CMD}
   ${CMD}
   sleep ${DELAY} 
done

