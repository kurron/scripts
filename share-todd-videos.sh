#!/bin/bash

echo 'Sharing video files...'
mkdir -p /cygdrive/i/BitTorrenSync/Todd/video
rsync --verbose --checksum --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.mp4' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/cygdrive/i/BitTorrenSync/Todd/video'
