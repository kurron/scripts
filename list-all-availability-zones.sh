#!/bin/bash
 
rm zones.txt

for region in us-east-1 us-east-2 us-west-1 us-west-2 ca-central-1 eu-west-1 eu-west-2 eu-west-3 eu-central-1 ap-northeast-1 ap-northeast-2 ap-southeast-1 ap-southeast-2 ap-south-1 sa-east-1
do
   CMD="aws --profile personal ec2 --region ${region} describe-availability-zones"
   echo ${CMD}
   ${CMD} >> zones.txt
done

echo Zone information has been written to zones.txt
