#!/bin/bash

CDN=${1:-dfbbr6ayt1rv5.cloudfront.net}
ELB=${2:-internal-Phoen-LoadB-PHMDXVZCA9CT-715320059.us-west-2.elb.amazonaws.com}
DELAY=${3:-1}

#CMD="http --verbose --follow https://${CDN}/alpha/ elb==${ELB} port==80 endpoint==/bravo/"
CMD="http --follow https://${CDN}/alpha/ elb==${ELB} port==80 endpoint==/bravo/"
#CMD="http --follow https://${CDN}/alpha/ elb==${ELB} port==80 endpoint==/bravo/"
#CMD="http --follow https://${CDN}/alpha/"

for (( ; ; )) 
do
#  echo ${CMD}
   ${CMD}
   sleep ${DELAY} 
done

