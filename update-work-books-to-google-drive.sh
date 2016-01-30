#!/bin/bash

#FROM=/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/mobi/
#FROM=/cygdrive/i/BitTorrenSync/'Todd Books'/Apps/
FROM=/cygdrive/i/BitTorrenSync/
#TO=/cygdrive/e/documents/transparent-language
TO=/cygdrive/c/Users/rkurr/'Google Drive'/transparent

echo 'Copying epub books to Google Drive...'
rsync --verbose --recursive --checksum --delete --prune-empty-dirs --human-readable --progress --itemize-changes --exclude='Todd Books/Apps/.sync/' --include='*/' --include='*.epub' --exclude='*' "$FROM" "$TO"
