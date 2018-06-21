#!/usr/bin/env bash

# list the current AMI in the specified region
# https://aws.amazon.com/blogs/compute/query-for-the-latest-amazon-linux-ami-ids-using-aws-systems-manager-parameter-store/

#CMD="aws --profile personal ssm get-parameters-by-path --path "/aws/service/ami-amazon-linux-latest/" --region us-east-1"
CMD="aws --profile personal ssm get-parameters --names /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2 --region us-east-1"
echo ${CMD}
${CMD}
