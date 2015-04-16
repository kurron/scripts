#!/bin/bash

SOURCE=hg-to-git
TARGET=hg-to-git
mkdir $TARGET 

for dir in */ 
    do 
        echo converting $dir
        hg clone $dir $TARGET
        rm -rf $TARGET/$dir/.hg
#       git init $TARGET/$dir
#       cd $TARGET/dir ; git add --all ; cd -
    done
