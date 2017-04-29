#!/bin/bash

# convert an image made from a disk using dd to a VirtualBox disk drive 
# https://blog.sleeplessbeastie.eu/2012/04/29/virtualbox-convert-raw-image-to-vdi-and-otherwise/
# https://www.virtualbox.org/manual/ch08.html#idm5411
# sudo dd if=/dev/sda of=windows-10.raw bs=1M

FROM=${1:-disk.raw}
TO=${2:-disk.vdi}
FORMAT=${3:-VDI}

CMD="VBoxManage convertfromraw ${FROM} ${TO} --format ${FORMAT}"
echo ${CMD}
${CMD}
