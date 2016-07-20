#!/bin/bash

echo 'Sharing video files...'
rsync --verbose --checksum --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.mp4' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/cygdrive/d/BitTorrent Sync/Todd/video'
