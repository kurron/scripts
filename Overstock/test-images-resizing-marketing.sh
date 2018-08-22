#!/usr/bin/env bash

clear

HTTP="http --verbose --follow --all --print Hh --max-redirects=5 "
HTTP_NO_FOLLOW="http --verbose --all --print Hh "

echo Access via direct CDN URL
CDN="https://dyhz9cttlt4hw.cloudfront.net/1024x768/f5a6c84adaea07e175f084802a9541de.jpeg"
#CHARLIE="${HTTP} ${CDN}"
CHARLIE="${HTTP_NO_FOLLOW} ${CDN}"
echo ${CHARLIE}
${CHARLIE}
echo

