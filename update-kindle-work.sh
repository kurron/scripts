#!/bin/bash

#FROM=/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/mobi/
#FROM=/cygdrive/i/BitTorrenSync/Todd/mobi/
FROM='/cygdrive/i/BitTorrenSync/Todd Books/Apps/'
TO=/cygdrive/e/documents/transparent-language

echo "Copying mobi books from $FROM to $TO"
rsync --verbose --recursive --checksum --delete --prune-empty-dirs --human-readable --progress --itemize-changes --exclude='Packet Publishing/'  --include='*/' --include='*.mobi' --exclude='*' "$FROM" "$TO"
