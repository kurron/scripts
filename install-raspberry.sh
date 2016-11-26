#!/bin/bash

#ansible-playbook --inventory=raspberries --user pi --ask-pass --become-user root --ask-become-pass --limit midgard raspberry.yml
ansible-playbook --verbose --inventory=raspberries --user pi --ask-pass --become-user root --ask-become-pass raspberry.yml
