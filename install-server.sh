#!/bin/bash

#ansible-playbook --verbose --inventory=servers --user rkurr --ask-pass --become-user root --ask-become-pass server.yml
#ansible-playbook --inventory=servers --user rkurr --ask-pass --become-user root --ask-become-pass --limit @/home/rkurr/GitHub/scripts/server.retry server.yml
#ansible-playbook --inventory=servers --user rkurr --ask-pass --become-user root --ask-become-pass --limit atlantis --tags backup server.yml
#ansible-playbook --verbose --inventory=servers --user rkurr --ask-pass --become-user root --ask-become-pass --limit asgard --tags virtualbox server.yml
#ansible-playbook --verbose --inventory=servers --user rkurr --ask-pass --become-user root --ask-become-pass --tags resilio server.yml
#ansible-playbook --verbose --inventory=servers --user rkurr --ask-pass --become-user root --ask-become-pass --limit "stargate,asgard" --tags plex server.yml
#ansible-playbook --verbose --inventory=servers --user rkurr --ask-pass --become-user root --ask-become-pass --limit "atlantis" server.yml
ansible-playbook --verbose --inventory=servers --user rkurr --ask-pass --become-user root --ask-become-pass --limit "bifrost" server.yml
