#!/bin/bash

ansible-playbook --connection=local --user rkurr --ask-pass --become-user root --ask-become-pass hashicorp.yml
