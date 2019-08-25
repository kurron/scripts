#!/usr/bin/env bash

# installs desired applications for a newly installed OS 

PROGNAME=$(basename $0)
error_exit()
{
          echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
          exit 1
}

sudo apt install git || error_exit "Unable to install Git."
sudo snap install code --classic || error_exit "Unable to install Visual Studio Code."

sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" >> /etc/apt/sources.list.d/virtualbox.list' || error_exit "Unable to add VirtualBox repository."
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add - || error_exit "Unable to install VirtualBox repository key."
sudo apt-get update || error_exit "Unable to update repositories."
sudo apt-get install virtualbox-6.0 || error_exit "Unable to install VirtualBox."
