#!/bin/bash

set -x

ssh-add -l
ssh-add ~/.ssh/kops
ssh -A admin@bastion.kops.transparent.education
