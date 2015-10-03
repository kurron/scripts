#!/bin/bash

if [ "$1" = "" ]
then
 echo "Usage: $0 container-name backup-directory"
 exit
fi

if [ "$2" = "" ]
then
 echo "Usage: $0 container-name backup-directory"
 exit
fi


CONTAINER=$1
BACKUP=$2

CMD="docker run --rm=true --volumes-from $CONTAINER --volume $BACKUP:/backup ubuntu tar --create --verbose --file /backup/$CONTAINER.tar /config"
echo $CMD
$CMD

