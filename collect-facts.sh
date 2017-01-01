#!/bin/bash

ansible --inventory "54.191.253.9," --user ec2-user --become-user root --private-key /home/vagrant/Bitbucket/Operations/aws-ssh-keys/us-west-2/asgard-lite-test.pem all -m setup
