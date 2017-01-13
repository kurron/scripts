#!/bin/bash

ansible --become --ask-become-pass --inventory servers --limit "asgard,atlantis,stargate" all -a "apt-get update"
ansible --become --ask-become-pass --inventory servers --limit "asgard,atlantis,stargate" all -a "apt-get dist-upgrade --yes"
