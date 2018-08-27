#!/usr/bin/env bash

clear

#ASSET=${1:-cd89c4d4193a3fd4c0b6d74fb26ae2a5.jpeg}
ASSET=${1:-69x69/REMOTEaHR0cHM6Ly9jb20tb3ZlcnN0b2NrLWFkcC1hc3NldHMtc3RhZ2luZy5zMy51cy1lYXN0LTIuYW1hem9uYXdzLmNvbS8zZTljZTdiOTljMDc0Y2MzOWI0NjI5MjBlY2EyZDRmMS5qcGVn.jpeg}
#ASSET=${1:-100x102/blue-marble.jpg}

HTTP="http --verbose --follow --all --print Hh --max-redirects=5 "
HTTP_NO_FOLLOW="http --verbose --all --print Hh "

echo Access via direct S3 URL
S3="https://s3.us-east-2.amazonaws.com/com-overstock-adp-assets-staging/${ASSET}"
ALPHA="${HTTP} ${S3}"
#echo ${ALPHA}
#${ALPHA}
echo


echo Access via direct S3 Website URL
WEB="http://com-overstock-adp-assets-staging.s3-website.us-east-2.amazonaws.com/${ASSET}"
BRAVO="${HTTP} ${WEB}"
#echo ${BRAVO}
#${BRAVO}
echo

echo Access via direct CDN URL
CDN="https://d3l5e03zbw9ed4.cloudfront.net/${ASSET}"
CHARLIE="${HTTP} ${CDN}"
#CHARLIE="${HTTP_NO_FOLLOW} ${CDN}"
echo ${CHARLIE}
${CHARLIE}
echo

echo Access via Custom Domain Name 
BOB="staging/AdpImageResizer?key=${ASSET}"
#GATEWAY="https://d-d7c39m18sh.execute-api.us-east-2.amazonaws.com"
GATEWAY="https://staging-image-resize.orfeo.io"
#GATEWAY="https://e448sv058a.execute-api.us-east-2.amazonaws.com"
#DELTA="${HTTP_NO_FOLLOW} ${GATEWAY}/${BOB}"
DELTA="${HTTP} ${GATEWAY}/${BOB}"
#echo ${DELTA}
#${DELTA}
echo

