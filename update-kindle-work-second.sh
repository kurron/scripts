#!/bin/bash

#FROM=/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/mobi/
#FROM=/cygdrive/i/BitTorrenSync/Todd/mobi/
FROM=/cygdrive/i/BitTorrenSync/Todd\ Books/Apps/
TO=/cygdrive/e/documents/transparent-language

CMD="rsync --verbose --recursive --checksum --delete --prune-empty-dirs --human-readable --progress --itemize-changes --include='*/' --include='[M-Zm-z]*.mobi' --exclude='*' '$FROM' '$TO'"

echo eval $CMD
eval $CMD
