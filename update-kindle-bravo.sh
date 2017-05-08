#!/bin/bash

#FROM=/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/mobi/
#FROM=/cygdrive/i/BitTorrenSync/Todd/mobi/
FROM=/cygdrive/d/Downloads/Books/
TO=/cygdrive/e/documents/transparent-language

CMD="rsync --verbose --recursive --checksum --delete --prune-empty-dirs --human-readable --progress --itemize-changes --include='*/' --include='*.mobi' --exclude='*' '$FROM' '$TO'"
echo eval $CMD
eval $CMD
