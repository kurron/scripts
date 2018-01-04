#!/usr/bin/env bash

echo Package update using only ipv4, avoiding uncessary slowdowsn 

UPDATE="sudo apt-get -o Acquire::ForceIPv4=true update"
echo ${UPDATE}
${UPDATE}

UPGRADE="sudo apt-get -o Acquire::ForceIPv4=true dist-upgrade"
echo ${UPGRADE}
${UPGRADE}
