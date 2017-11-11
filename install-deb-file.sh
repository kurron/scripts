#!/usr/bin/env bash

DEB_FILE=${2:-does-not-exist.deb}

CMD="sudo dpkg -i ${DEB_FILE} && sudo apt-get install -f"
echo ${CMD}
${CMD}
