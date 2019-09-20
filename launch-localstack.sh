#!/usr/bin/env bash

PROGNAME=$(basename $0)
error_exit()
{
	  echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
	  exit 1
}

echo Updating Base Image...
docker pull localstack/localstack:latest || error_exit "Unable to pull Docker image."

echo Launching localstack

COMMAND="docker run \
		 --env-file localstack.ini \
		 --interactive \
		 --name localstack \
		 --network host \
		 --privileged \
		 --rm \
		 --tty \
		 --volume /tmp:/tmp/localstack \
		 --volume /var/run/docker.sock:/var/run/docker.sock \
         localstack/localstack:latest"
echo ${COMMAND}
${COMMAND} || error_exit "Unable to start localstack."
