#!/bin/bash

FROM=/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/

echo 'Generating epub inventory...'
find $FROM -type f -name \*.epub -print  | sort

echo 'Generating mobi inventory...'
find $FROM -type f -name \*.mobi -print  | sort

echo 'Generating pdf inventory...'
find $FROM -type f -name \*.pdf -print  | sort
