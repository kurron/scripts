#!/bin/bash

#FROM=/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/mobi/
#FROM=/cygdrive/i/BitTorrenSync/Todd/mobi/
#FROM=/cygdrive/i/BitTorrenSync/Todd\ Books/Apps/
#FROM=/cygdrive/d/BitTorrent\ Sync/Apps/
FROM=/tmp/separated/first
TO=/cygdrive/e/documents/transparent-language

CMD="rsync --verbose --recursive --checksum --delete --prune-empty-dirs --human-readable --progress --itemize-changes --include='*/' --exclude='*designed-for-use*' --exclude='*IllustratedGuidetoAstronomicalWonders*' --exclude='*HeadFirstPhysics*' '$FROM' '$TO'"
echo eval $CMD
eval $CMD
