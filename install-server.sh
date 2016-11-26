#!/bin/bash

ansible-playbook --verbose --inventory=servers --user rkurr --ask-pass --become-user root --ask-become-pass server.yml
#ansible-playbook --inventory=servers --user rkurr --ask-pass --become-user root --ask-become-pass --limit @/home/rkurr/GitHub/scripts/server.retry server.yml
#ansible-playbook --inventory=servers --user rkurr --ask-pass --become-user root --ask-become-pass --limit atlantis --tags backup server.yml
#ansible-playbook --inventory=servers --user rkurr --ask-pass --become-user root --ask-become-pass --limit vanaheim server.yml
