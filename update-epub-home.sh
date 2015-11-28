#!/bin/bash

FROM=/cygdrive/c/Users/kurr/Dropbox/Apps/
TO=/tmp/epub

echo 'Copying epub books...'
mkdir $TO
rsync --verbose --recursive --checksum --delete --prune-empty-dirs --human-readable --progress --itemize-changes --include='*/' --include='*.epub' --exclude='*' $FROM $TO

rm -rf $TO/combined 
mkdir $TO/combined 
find $TO -type f -name '*.epub' -exec cp {} $TO/combined \; -print 

