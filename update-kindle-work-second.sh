#!/bin/bash

#FROM=/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/mobi/
FROM=/cygdrive/i/BitTorrenSync/Todd/mobi/
TO=/cygdrive/e/documents/transparent-language

echo 'Copying mobi books...'
rsync --verbose --recursive --checksum --delete --prune-empty-dirs --human-readable --progress --itemize-changes --include='*/' --include='[M-Z]*.mobi' --exclude='*' $FROM $TO
