#!/usr/bin/env bash

# Brave from source repository 

PROGNAME=$(basename $0)
error_exit()
{
          echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
          exit 1
}

#sudo apt install apt-transport-https curl || error_exit "Unable to install necessary programs."
#curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add - || error_exit "Unable to install repository key."
#source /etc/os-release || error_exit "Unable to determine OS."
#echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-${UBUNTU_CODENAME}.list || error_exit "Unable to repository."
#sudo apt update || error_exit "Unable to determine OS."
#sudo apt install brave-browser || error_exit "Unable to install browser."

# from https://brave.com/linux/
sudo apt install curl && sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list && sudo apt update && sudo apt install brave-browser
