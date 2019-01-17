#!/usr/bin/env bash

# showcase the new POST-based search resource
# example usage: ./search.sh https://staging-adp-api.orfeo.io the-api-key active-assets.json

PROGNAME=$(basename $0)
error_exit()
{
	  echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
	  exit 1
}

if [[ $# -ne 3 ]]; then
    error_exit "Usage: $0 <base url> <api key> <data file name>"
fi

BASE_URL=${1}
API_KEY=${2}
BODY=${3}

CURL="curl --silent \
	   --show-error 
           --header Content-Type:application/json \
           --header Accept:application/json \
	   --header x-api-key:${API_KEY} \
	   --request POST \
	   --data @${BODY} \
	   ${BASE_URL}/assets/search"
echo ${CURL}
${CURL} | python -m json.tool
