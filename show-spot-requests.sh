#!/bin/bash

CMD="aws ec2 describe-spot-instance-requests --spot-instance-request-ids sir-wfeg8awq sir-81z89itm sir-bry896zp sir-vknr8r6m"

echo ${CMD}
${CMD}

