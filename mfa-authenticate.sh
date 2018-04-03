#!/usr/bin/env bash

# This script will generate temporary API keys based on your MFA device.

if [ "$1" = "" ]
then
 echo "Usage: $0 <mfa code from your device> <ARN of your MFA device>"
 exit
fi

MFA_CODE=${1}
MFA_DEVICE_ARN=${2:-arn:aws:iam::022776788690:mfa/rkurr}

CMD="aws sts get-session-token --serial-number ${MFA_DEVICE_ARN} --token-code ${MFA_CODE}"
echo ${CMD}
JSON=$(${CMD})
#JSON='{ "Credentials": { "SecretAccessKey": "qaEycXg9vYqvThJlfrem6F+rqKPxz0SYYTfA88tP", "SessionToken": "FQoDYXdzEEoaDFdX9vrK0209ofsEGCKwAeKl7E5+i0a3fhL82MAlFy5+n/uhIJoQs3mPwi3kVVXPK5ONTp8dDJlmLyyPiCAfQ7CfrtfygUqWuTpzNQ9erEk6W5RBVUJogyiR7uMET6kwhZCqW7cZAHcuHdiy6e7CAKEQVTom7LtFGtnYaRTvuIUDa7jRD4ZIWJyz+SJ+7ZZPp4f4MuUQfeZyi61QUc3mhqVtxn5lxsMCvNIPhY6CgeW0tHv+yHqBOuHsbTNzz5PLKLPgjtYF", "Expiration": "2018-04-04T04:47:47Z", "AccessKeyId": "ASIAJNL3VAFXPVPITBEA" } }'
#echo ${JSON}

KEY=$(echo "${JSON}" | jq --compact-output --raw-output '.Credentials.SecretAccessKey')
ID=$(echo "${JSON}" | jq --compact-output --raw-output '.Credentials.AccessKeyId')
EXPIRATION=$(echo "${JSON}" | jq --compact-output --raw-output '.Credentials.Expiration')
TOKEN=$(echo "${JSON}" | jq --compact-output --raw-output '.Credentials.SessionToken')

export AWS_ACCESS_KEY=${ID}
export AWS_SECRET_ACCESS_KEY=${KEY}
export AWS_SESSION_TOKEN=${TOKEN}

echo AWS_ACCESS_KEY=${AWS_ACCESS_KEY}
echo AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}
echo AWS_SESSION_TOKEN=${AWS_SESSION_TOKEN}
echo
echo "CLI access will be available until ${EXPIRATION}.  Appropriate environment variables have been exported."
