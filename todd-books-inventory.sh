#!/bin/bash

FROM=/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/

# find ./dir1 -type f -exec basename {} \;

echo 'Generating epub inventory...'
find $FROM -type f -name \*.epub -exec basename {} \; | sort > books-epub.txt

echo 'Generating mobi inventory...'
find $FROM -type f -name \*.mobi -exec basename {} \; | sort > books-mobi.txt

echo 'Generating pdf inventory...'
find $FROM -type f -name \*.pdf -exec basename {} \; | sort > books-pdf.txt

echo 'Generating mp4 inventory...'
find $FROM -type f -name \*.mp4 -exec basename {} \; | sort > books-mp4.txt

echo 'Generating zip inventory...'
find $FROM -type f -name \*.zip -exec basename {} \; | sort > books-zip.txt
