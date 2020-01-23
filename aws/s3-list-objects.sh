#!/usr/bin/env bash

# list S3 buckets owned by the profile and, perhaps more importantly, also shows the user's canonical user id 

BUCKET=${1:-com-overstock-es-snapshot-development}
PROFILE=${2:-personal}

CMD="aws --profile ${PROFILE} s3api list-objects --bucket ${BUCKET}"
echo $CMD
$CMD

