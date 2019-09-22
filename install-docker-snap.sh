#!/usr/bin/env bash

PROGNAME=$(basename $0)
error_exit()
{
          echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
          exit 1
}

sudo snap install docker || error_exit "Unable to install Docker."
sudo addgroup --system docker || error_exit "Unable to add the docker group."
sudo adduser $USER docker || error_exit "Unable to add $USER to the docker group."
newgrp docker || error_exit "Unable to refresh the group."
sudo snap restart docker || error_exit "Unable to restart the docker daemon."
docker info || error_exit "Unable to prove docker permissions are correct."
