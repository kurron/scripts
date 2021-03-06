#!/usr/bin/env bash

# This script will generate temporary API keys based on your MFA device. Intended to be used by a Terraform environment.

if [ "$1" = "" ]
then
 echo "Usage: $0 <mfa code from your device> <ARN of your MFA device>"
 exit
fi

MFA_CODE=${1}
MFA_DEVICE_ARN=${2:-arn:aws:iam::022776788690:mfa/rkurr}
REGION=${3:-us-west-2}
PROFILE=${4:-marketing}

CMD="aws --profile ${PROFILE} sts get-session-token --serial-number ${MFA_DEVICE_ARN} --token-code ${MFA_CODE}"
echo ${CMD}
JSON=$(${CMD})
#JSON='{ "Credentials": { "SecretAccessKey": "qaEycXg9vYqvThJlfrem6F+rqKPxz0SYYTfA88tP", "SessionToken": "FQoDYXdzEEoaDFdX9vrK0209ofsEGCKwAeKl7E5+i0a3fhL82MAlFy5+n/uhIJoQs3mPwi3kVVXPK5ONTp8dDJlmLyyPiCAfQ7CfrtfygUqWuTpzNQ9erEk6W5RBVUJogyiR7uMET6kwhZCqW7cZAHcuHdiy6e7CAKEQVTom7LtFGtnYaRTvuIUDa7jRD4ZIWJyz+SJ+7ZZPp4f4MuUQfeZyi61QUc3mhqVtxn5lxsMCvNIPhY6CgeW0tHv+yHqBOuHsbTNzz5PLKLPgjtYF", "Expiration": "2018-04-04T04:47:47Z", "AccessKeyId": "ASIAJNL3VAFXPVPITBEA" } }'
#echo ${JSON}

KEY=$(echo "${JSON}" | jq --compact-output --raw-output '.Credentials.SecretAccessKey')
ID=$(echo "${JSON}" | jq --compact-output --raw-output '.Credentials.AccessKeyId')
EXPIRATION=$(echo "${JSON}" | jq --compact-output --raw-output '.Credentials.Expiration')
TOKEN=$(echo "${JSON}" | jq --compact-output --raw-output '.Credentials.SessionToken')

echo "export TF_VAR_master_aws_region=\"us-east-1\"" > /tmp/mfa.sh
echo "export TF_VAR_master_aws_access_key=\"${ID}\"" >> /tmp/mfa.sh
echo "export TF_VAR_master_aws_secret_key=\"${KEY}\"" >> /tmp/mfa.sh
echo "export TF_VAR_master_aws_session_token=\"${TOKEN}\"" >> /tmp/mfa.sh
echo
echo "Run source /tmp/mfa.sh to authorize your CLI commands"
echo
