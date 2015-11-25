#!/bin/bash

if [ "$1" = "" ]
then
 echo "Usage: $0 host port"
 exit
fi

if [ "$2" = "" ]
then
 echo "Usage: $0 host port"
 exit
fi


HOST=$1
PORT=$2

CMD="nc -vz $HOST $PORT"
echo $CMD
$CMD

