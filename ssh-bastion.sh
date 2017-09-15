#!/bin/bash

set -x

ssh-add -l
ssh-add ~/.ssh/bastion
ssh -A ec2-user@$1
