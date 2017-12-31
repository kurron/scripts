#!/bin/bash

ansible-playbook --connection=local --user vagrant --ask-pass --become-user root --ask-become-pass developer.yml
