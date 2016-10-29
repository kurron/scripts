#!/bin/bash

# install Ansible roles from Galaxy

#sudo ansible-galaxy install --force --verbose --role-file requirements.yml

rm -rf roles
ansible-galaxy install --verbose --role-file requirements.yml --roles-path roles

ansible-galaxy list --roles-path roles
