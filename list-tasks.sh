#!/usr/bin/env bash

# There is a bug in the current tasksel so this script works around it.

# https://bugs.launchpad.net/ubuntu/+source/tasksel/+bug/1622958

# to list current installation options
tasksel --list-tasks

# to install one 
echo tasksel install xubuntu-core

# see what packages a task contains
apt show xubuntu-core^ 2>/dev/null | grep-dctrl -s Package '.'

# you can install via a gui
echo tasksel
