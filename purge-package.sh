#!/bin/bash

if [ "$1" = "" ]
then
 echo "Usage: $0 package-name"
 exit
fi

PACKAGE=$1

CMD="sudo apt-get remove --purge $PACKAGE"
echo $CMD
$CMD

CMD="sudo apt-get autoremove"
echo $CMD
$CMD
