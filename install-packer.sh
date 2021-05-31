#!/usr/bin/env bash

PROGNAME=$(basename $0)
error_exit()
{
          echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
          exit 1
}

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add - || error_exit "Unable to get key."
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" || error_exit "Unable to add repository."
sudo apt-get update && sudo apt-get install packer || error_exit "Unable to install Packer."
sudo apt-get install libarchive-tools || error_exit "Unable to install bdtar."

