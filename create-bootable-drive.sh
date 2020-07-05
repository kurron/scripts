#!/usr/bin/env bash

echo Creating bootable media via ddrescue

echo Run sudo apt-get install gddrescue xz-utils before using this script

echo run lsblk to determine the target device

lsblk

echo if this doesn't work, try sudo dd if=FreeNAS-11.3-U3.2.iso of=/dev/sdj bs=64k status=progress

SOURCE=${1:-ubuntu-mate-16.04.2-desktop-armhf-raspberry-pi.img}
DESTINATION=${2:-zero}

CMD="sudo ddrescue --odirect --verbose --force ${SOURCE} /dev/${DESTINATION}"
echo ${CMD}
${CMD}

sudo sync
