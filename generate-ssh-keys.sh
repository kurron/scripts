#!/bin/bash

if [ "$1" = "" ]
then
 echo "Usage: $0 comment"
 exit
fi

COMMENT=$1

mkdir .ssh
ssh-keygen -C "$COMMENT" -t rsa -f .ssh/id_rsa
chmod 0700 .ssh
