#!/bin/bash

ansible-playbook --inventory=raspberries --user pi --ask-pass --become-user root --ask-become-pass --limit alfheim raspberry.yml
