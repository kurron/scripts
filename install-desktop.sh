#!/bin/bash

ansible-playbook --connection=local --user rkurr --ask-pass --become-user root --ask-become-pass desktop.yml
#ansible-playbook --connection=local --user rkurr --ask-pass --become-user root --ask-become-pass --tags hashicorp desktop.yml
