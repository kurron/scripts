#!/usr/bin/env bash

PROGNAME=$(basename $0)
error_exit()
{
	  echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
	  exit 1
}

echo Updating Base Image...
docker pull localstack/localstack:latest || error_exit "Unable to pull Docker image."

export TMPDIR=/home/vagrant/Localstack
echo Launching localstack
localstack start --docker || error_exit "Unable to start localstack."

