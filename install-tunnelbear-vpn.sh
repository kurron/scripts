#!/usr/bin/env bash

# https://www.tunnelbear.com/blog/linux_support/

sudo apt-get install network-manager-openvpn-gnome
curl --output /tmp/tunnelbear.zip https://s3.amazonaws.com/tunnelbear/linux/openvpn.zip
unzip /tmp/tunnelbear.zip -d /tmp/tunnelbear-files
