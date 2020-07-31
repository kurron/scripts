#!/usr/bin/env bash

# by default, VirtualBox only exposes the remote desktop to localhost
VBoxManage modifyvm "Work" --vrdeaddress 0.0.0.0
