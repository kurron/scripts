#!/usr/bin/env bash

# list S3 buckets owned by the profile and, perhaps more importantly, also shows the user's canonical user id 

PROFILE=${1:-personal}

CMD="aws --profile ${PROFILE} s3api list-buckets --output text"
echo $CMD
$CMD

