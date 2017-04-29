#!/bin/bash

# https://wiki.linuxfoundation.org/networking/netem

DEVICE=${1:-/dev/sda}

# Ubuntu doesn't seem to come with the command by default
#sudo smartctl -a ${DEVICE}
#echo

sudo hdparm -I ${DEVICE} | egrep "Model|speed"
echo

sudo hdparm -I ${DEVICE} | egrep "Model|speed|Transport"
echo
