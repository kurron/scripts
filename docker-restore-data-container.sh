#!/bin/bash

if [ "$1" = "" ]
then
 echo "Usage: $0 container-name /my/backup/directory backup-file-name.tar"
 exit
fi

if [ "$2" = "" ]
then
 echo "Usage: $0 container-name /my/backup/directory backup-file-name.tar"
 exit
fi


if [ "$3" = "" ]
then
 echo "Usage: $0 container-name /my/backup/directory backup-file-name.tar"
 exit
fi

CONTAINER=$1
BACKUP=$2
FILE=$3

CMD="docker run --rm=true --volumes-from $CONTAINER --volume $BACKUP:/backup ubuntu tar --extract --verbose --directory / --file /backup/$FILE"
echo $CMD
$CMD

