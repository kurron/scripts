#!/usr/bin/env bash

PROGNAME=$(basename $0)
error_exit()
{
          echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
          exit 1
}

sudo apt update && sudo apt upgrade && sudo apt install flatpak -y || error_exit "Unable to install Flatpak."
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo || error_exit "Unable to install Flathub."
flatpak --version
flatpak search telegram
