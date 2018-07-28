#!/usr/bin/env bash

# https://github.com/linuxhw/hw-probe

xhost +local:

sudo docker run -it \
-v /dev:/dev:ro \
-v /lib/modules:/lib/modules:ro \
-v /etc/os-release:/etc/os-release:ro \
-v /var/log:/var/log:ro \
--privileged --net=host --pid=host \
linuxhw/hw-probe -all -upload -id RKURR
