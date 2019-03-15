#!/usr/bin/env bash

PROGNAME=$(basename $0)
error_exit()
{
      echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
      exit 1
}

if [[ $# -lt 1 ]]; then
	error_exit "Usage: $0 <api key> (base url) (timeout)"
fi


API_KEY=${1}
BASE_URL=${2:-ADP-development-61b1ea162f25e546.elb.us-west-2.amazonaws.com}
TIMEOUT=${3:-1}

for (( ; ; ))
do
    clear
    curl -sS --no-keepalive \
	     --connect-timeout ${TIMEOUT} \
	     --header x-api-key:${API_KEY} \
	     --header 'cache-control: no-cache' \
	     ${BASE_URL}/assets/id/1d84c66742090d6344434370c023af82 || error_exit "cURL failure."
    sleep 1s
done
