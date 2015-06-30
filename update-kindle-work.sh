#!/bin/bash

FROM=/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/mobi/
TO=/cygdrive/e/documents/transparent-language

echo 'Copying mobi books...'
rsync --verbose --recursive --checksum --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.mobi' --exclude='*' $FROM $TO
