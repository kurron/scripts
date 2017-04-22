#!/bin/bash

until sudo apt -y update; do echo "Waiting for apt lock"; sleep 5; done

sudo apt install -y python-pip python-dev build-essential libssl-dev libffi-dev apt-transport-https sshpass
sudo pip install --upgrade pip
sudo pip install --upgrade ansible
sudo pip install --upgrade setuptools

# to test: ansible all -i "localhost," --user rkurr --ask-pass --become-user rkurr --become --ask-become-pass -m setup | less
