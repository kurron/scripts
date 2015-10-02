#!/bin/bash

if [ "$1" = "" ]
then
 echo "Usage: $0 container-name"
 exit
fi

CONTAINER=$1

# the container is expected to already exist

#CMD="docker run --volume /var/lib/mysql --volume /etc/mysql/conf.d --name $CONTAINER busybox"
#echo $CMD
#$CMD

CMD="docker run --rm=true --volumes-from $CONTAINER --volume $(pwd)/backup:/backup ubuntu tar --extract --verbose --directory /var/lib/mysql --file /backup/$CONTAINER-1.tar"
echo $CMD
$CMD

CMD="docker run --rm=true --volumes-from $CONTAINER --volume $(pwd)/backup:/backup ubuntu tar --extract --verbose --directory /etc/mysql/conf.d --file /backup/$CONTAINER-2.tar"
echo $CMD
$CMD
