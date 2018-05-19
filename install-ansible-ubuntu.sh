#!/usr/bin/env bash

#until sudo apt --yes update; do echo "Waiting for apt lock"; sleep 5; done

#sudo --set-home apt install -y python-pip python-dev build-essential libssl-dev libffi-dev apt-transport-https sshpass
#sudo --set-home pip install --upgrade pip
#sudo --set-home pip install --upgrade ansible
#sudo --set-home pip install --upgrade setuptools


echo "Installing Ansible via package manager..."

until sudo apt-get --yes update; do echo "Waiting for apt lock"; sleep 5; done

sudo apt-get update
sudo apt-get --yes install software-properties-common apt-transport-https ca-certificates curl
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get --yes install ansible

ansible --version

# to test: ansible all -i "localhost," --user rkurr --ask-pass --become-user rkurr --become --ask-become-pass -m setup | less
