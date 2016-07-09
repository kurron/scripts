#!/bin/bash

# converts a screen capture into an animated gif

if [ "$1" = "" ]
then
 echo "Usage: $0 <path to output of recordMyDesktop> <desired output directory>"
 exit
fi

if [ "$2" = "" ]
then
 echo "Usage: $0 <path to output of recordMyDesktop> <desired output directory>"
 exit
fi

INPUT=$1
OUTPUT=$2

A="mkdir -p $OUTPUT"
echo $A
$A

B="mplayer -ao null $INPUT -vo jpeg:outdir=$OUTPUT"
echo $B
$B

cd $OUTPUT
C="convert *.jpg raw.gif"
echo $C
$C


D="convert raw.gif -fuzz 15% -layers optimize optimized.gif"
echo $D
$D
