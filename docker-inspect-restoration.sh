#!/bin/bash

if [ "$1" = "" ]
then
 echo "Usage: $0 container-name"
 exit
fi

CONTAINER=$1

CMD="docker run --rm=true --interactive=true --tty=true --volumes-from $CONTAINER ubuntu /bin/bash"
echo $CMD
$CMD

