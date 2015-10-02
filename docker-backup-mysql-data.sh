#!/bin/bash

if [ "$1" = "" ]
then
 echo "Usage: $0 container-name"
 exit
fi

CONTAINER=$1

CMD="mkdir -p $(pwd)/backup"
echo $CMD
$CMD

CMD="docker run --volumes-from $CONTAINER --volume $(pwd)/backup:/backup ubuntu tar --create --verbose --file /backup/$CONTAINER-1.tar /var/lib/mysql"
echo $CMD
$CMD

CMD="docker run --volumes-from $CONTAINER --volume $(pwd)/backup:/backup ubuntu tar --create --verbose --file /backup/$CONTAINER-2.tar /etc/mysql/conf.d"
echo $CMD
$CMD
