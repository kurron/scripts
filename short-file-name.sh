#!/bin/bash

#dir=`dirname $1`
#file=`basename $1`
#lastdir=`basename $dir`
#echo $lastdir/$file

echo $(basename $(dirname $1))/$(basename $1)
