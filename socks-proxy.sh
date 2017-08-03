#!/bin/bash

# i-043e55ef3dc72ac4d

HOST=${1-ec2-52-201-252-190.compute-1.amazonaws.com}

CMD="ssh -i ~/.ssh/openvpn.pem -D 8123 -f -C -q -N ec2-user@${HOST}"

echo ${CMD}
${CMD}

ps aux | grep ssh

echo 'use ps -eopid,cmd | grep ssh to get the pid to kill when you are done'
