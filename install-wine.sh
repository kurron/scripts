#!/usr/bin/env bash

# Install wine on Ubuntu 
# https://www.omgubuntu.co.uk/2019/01/wine-4-0 

PROGNAME=$(basename $0)
error_exit()
{
	  echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
	  exit 1
}

GET_KEY="wget -nc https://dl.winehq.org/wine-builds/winehq.key"
echo ${GET_KEY}
${GET_KEY} || error_exit "Unable to download key"

ADD_KEY="sudo apt-key add winehq.key"
echo ${ADD_KEY}
${ADD_KEY} || error_exit "Unable to add key"

ADD_REPO="sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'"
echo ${ADD_REPO}
${ADD_REPO} || error_exit "Unable to add repository"

UPDATE="sudo apt-get update"
echo ${UPDATE}
${UPDATE} || error_exit "Unable to update packages"

INSTALL="sudo apt install --install-recommends winehq-stable"
echo ${INSTALL}
${INSTALL} || error_exit "Unable to install wine"

