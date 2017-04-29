#!/bin/bash

#ansible --inventory "54.244.207.92," --user ec2-user --become-user root --private-key /home/vagrant/Bitbucket/Operations/aws-ssh-keys/us-west-2/asgard-lite-test.pem all -m setup
ansible --inventory "localhost," --user rkurr --become-user root --ask-pass --ask-become-pass all -m setup
