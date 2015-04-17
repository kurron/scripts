#!/bin/bash

SOURCE=$1
TARGET=$2
mkdir $TARGET 

for dir in $SOURCE/* 
    do 
        echo converting $dir
        cd $dir ; hg archive $TARGET/$dir ; cd -
        git init $TARGET/$dir
        cd $TARGET/dir ; git add --all ; git commit -a -m 'Import from Mercurial' ; cd -
    done
