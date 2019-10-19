#!/usr/bin/env bash

# https://www.ubuntupit.com/handbrake-a-free-and-open-source-transcoder-for-linux/ 

PROGNAME=$(basename $0)
error_exit()
{
          echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
          exit 1
}

echo Installing Handbrake

sudo add-apt-repository ppa:stebbins/handbrake-releases || error_exit "Unable to add repository."

sudo apt-get update || error_exit "Unable to update packages."

sudo apt-get install handbrake-gtk handbrake-cli || error_exit "Unable to install packages."

