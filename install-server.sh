#!/bin/bash

ansible-playbook --inventory=servers --user rkurr --ask-pass --become-user root --ask-become-pass server.yml
