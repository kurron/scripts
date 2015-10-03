#!/bin/bash

if [ "$1" = "" ]
then
 echo "Usage: $0 container-name file-name.tar"
 exit
fi

if [ "$2" = "" ]
then
 echo "Usage: $0 container-name file-name.tar"
 exit
fi

CONTAINER=$1
FILE=$2

docker export --output bob.tar plex-data
CMD="docker export --output $FILE $CONTAINER"
echo $CMD
$CMD

