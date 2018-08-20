#!/usr/bin/env bash

#ASSET=${1:-1024x768/REMOTEaHR0cHM6Ly9jb20tb3ZlcnN0b2NrLWFkcC1hc3NldHMtc3RhZ2luZy5zMy51cy1lYXN0LTIuYW1hem9uYXdzLmNvbS9kNGM1MDJkNjZiYzdlNjAzYWFiMTU4MWQ3ZTc5MmQ3OC5qcGVn.jpeg}
#ASSET=${1:-1024x768/REMOTEaHR0cHM6Ly9jb20tb3ZlcnN0b2NrLWFkcC1hc3NldHMtc3RhZ2luZy5zMy51cy1lYXN0LTIuYW1hem9uYXdzLmNvbS9mZmI3MDYzOGJlMzQyMGVjMWRjNjc1NDU5MjcwMDhmYy5qcGVn.jpeg}
ASSET=${1:-1024x768/REMOTEaHR0cHM6Ly9jb20tb3ZlcnN0b2NrLWFkcC1hc3NldHMtc3RhZ2luZy5zMy51cy1lYXN0LTIuYW1hem9uYXdzLmNvbS9mMjQ0OTkzNmFkYjJlMzZkMmU2NWVjZWYzNTFiNTljNi5qcGVn.jpeg}
#ASSET=${1:-ronbo/blue-marble.jpg}

HTTP="http --verbose --follow --max-redirects=5 "

echo Access via direct S3 URL
S3="https://s3.us-east-2.amazonaws.com/com-overstock-adp-assets-staging/${ASSET}"
ALPHA="${HTTP} ${S3}"
echo ${ALPHA}
${ALPHA}
echo


echo Access via direct S3 Website URL
WEB="http://com-overstock-adp-assets-staging.s3-website.us-east-2.amazonaws.com/${ASSET}"
BRAVO="${HTTP} ${WEB}"
echo ${BRAVO}
${BRAVO}
echo

echo Access via direct CDN URL
CDN="https://d3l5e03zbw9ed4.cloudfront.net/${ASSET}"
CHARLIE="${HTTP} ${CDN}"
echo ${CHARLIE}
${CHARLIE}
echo
