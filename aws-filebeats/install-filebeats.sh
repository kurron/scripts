#!/bin/bash

ansible-playbook --verbose --tags filebeat --inventory "35.164.251.0,35.165.181.194,35.165.182.9,54.245.42.243," --user ec2-user --become-user root --private-key /home/vagrant/Bitbucket/Operations/aws-ssh-keys/us-west-2/asgard-lite-test.pem playbook.yml
