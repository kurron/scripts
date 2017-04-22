#!/bin/bash

# clean up the old binaries so the new ones can replace them
sudo rm -f /usr/local/bin/packer

ansible-playbook --connection=local --user rkurr --ask-pass --become-user root --ask-become-pass desktop.yml
#ansible-playbook --connection=local --user rkurr --ask-pass --become-user root --ask-become-pass --tags hashicorp desktop.yml
