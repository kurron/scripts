#!/usr/bin/env bash

#stolen from https://www.safaribooksonline.com/library/view/ansible-2-for/9781786465719/

echo 'Installing Python 2 for use with Ansible'
CMD="sudo apt-get update && apt-get install python-minimal --no-install-recommends"
echo ${CMD}
${CMD}
