#!/bin/bash

until sudo dnf -y update; do echo "Waiting for repository lock"; sleep 5; done

# supposedly, this is the newer way to install pip
sudo dnf -y install python-pip python-devel libffi-devel openssl-devel gcc redhat-rpm-config sshpass
sudo pip install --upgrade pip
sudo pip install --upgrade paramiko
sudo pip install --upgrade ansible
sudo pip install --upgrade boto

# to test: ansible all -i "localhost," --user rkurr --ask-pass --become-user rkurr --become --ask-become-pass -m setup | less
