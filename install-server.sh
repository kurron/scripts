#!/bin/bash

ansible-playbook --inventory=servers --user rkurr --ask-pass --become-user root --ask-become-pass server.yml
#ansible-playbook --inventory=servers --user rkurr --ask-pass --become-user root --ask-become-pass --limit @/home/rkurr/GitHub/scripts/server.retry server.yml
