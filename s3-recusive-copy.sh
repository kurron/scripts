#!/usr/bin/env bash

# recursively copies files from the source folder into the S3 bucket, making all files public

if [ "$1" = "" ]
then
 echo "Usage: $0 source-directory bucket-name"
 exit
fi

if [ "$2" = "" ]
then
 echo "Usage: $0 source-directory bucket-name"
 exit
fi

SOURCE=$1
BUCKET=$2

CMD="aws s3 cp ${SOURCE} s3://${BUCKET} --recursive --acl public-read"
echo $CMD
$CMD

