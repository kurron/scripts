#!/bin/bash

ansible-playbook --verbose --inventory-file "192.168.1.89," --ask-pass --user vagrant playbook.yml
