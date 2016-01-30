#!/bin/bash

#FROM=/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/mobi/
#FROM=/cygdrive/i/BitTorrenSync/'Todd Books'/Apps/
FROM=/cygdrive/i/BitTorrenSync/
TO=/cygdrive/e/documents/transparent-language

echo 'Copying mobi books...'
rsync --verbose --recursive --checksum --delete --prune-empty-dirs --human-readable --progress --itemize-changes --exclude='Todd Books/Apps/.sync/' --include='*/' --include='*.mobi' --exclude='*' "$FROM" $TO
