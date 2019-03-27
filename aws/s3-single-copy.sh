#!/usr/bin/env bash

# copies a single file from the source folder into the S3 bucket, making the file public

if [ "$1" = "" ]
then
 echo "Usage: $0 source-file bucket-name profile-name"
 exit
fi

if [ "$2" = "" ]
then
 echo "Usage: $0 source-file bucket-name profile-name"
 exit
fi

SOURCE=$1
BUCKET=$2
PROFILE=${3:-personal}

CMD="aws --profile ${PROFILE} s3 cp ${SOURCE} s3://${BUCKET} --acl public-read"
echo $CMD
$CMD

