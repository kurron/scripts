#!/bin/bash

if [ "$1" = "" ]
then
 echo "Usage: $0 host port path concurrency number-of-requests"
 exit
fi

if [ "$2" = "" ]
then
 echo "Usage: $0 host port path concurrency number-of-requests"
 exit
fi

if [ "$3" = "" ]
then
 echo "Usage: $0 host port path concurrency number-of-requests"
 exit
fi

if [ "$4" = "" ]
then
 echo "Usage: $0 host port path concurrency number-of-requests"
 exit
fi


if [ "$5" = "" ]
then
 echo "Usage: $0 host port path concurrency number-of-requests"
 exit
fi

HOST=$1
PORT=$2
PATH=$3
CONCURRENCY=$4
REQUESTS=$5

CMD="/usr/bin/ab -n $REQUESTS -c $CONCURRENCY $HOST:$PORT$PATH"
echo $CMD
$CMD

