#!/usr/bin/env bash

# Install wine on Ubuntu 
# https://www.omgubuntu.co.uk/2019/01/wine-4-0 

PROGNAME=$(basename $0)
error_exit()
{
	  echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
	  exit 1
}

sudo add-apt-repository ppa:cncf-buildpacks/pack-cli || error_exit "Unable to add repository"
sudo apt-get update || error_exit "Unable to update repository" 
sudo apt-get install pack-cli || error_exit "Unable to install pack!"
