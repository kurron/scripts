#!/bin/bash

# install Ansible roles from Galaxy

sudo ansible-galaxy install --force --verbose --role-file requirements.yml
