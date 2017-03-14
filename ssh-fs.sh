#!/bin/bash

mkdir ~/aws-mount

sshfs -o IdentityFile=~/Bitbucket/Operations/aws-ssh-keys/us-west-2/asgard-lite-test.pem,auto_cache,reconnect ec2-user@10.0.60.140:/home/ec2-user ~/aws-mount

