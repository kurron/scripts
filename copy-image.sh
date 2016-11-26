#!/bin/bash


# sudo dnf install dcfldd

if [ "$1" = "" ]
then
 echo "Usage: $0 image-file destination"
 exit
fi

if [ "$2" = "" ]
then
 echo "Usage: $0 image-file destination"
 exit
fi

SOURCE=$1
DESTINATION=$2

CMD="sudo dcfldd bs=4M if=$SOURCE of=$DESTINATION"
echo $CMD
$CMD

