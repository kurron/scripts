#!/bin/bash

if [ "$1" = "" ]
then
 echo "Usage: $0 comment"
 exit
fi

COMMENT=$1

ssh-keygen -C "$COMMENT" -t rsa
