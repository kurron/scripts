#!/bin/bash

echo 'Sharing PDF books...'
mkdir -p /cygdrive/d/Todd/pdf
mkdir -p /tmp/Todd/pdf
rm -rf /tmp/ronbo/pdf
mkdir -p /tmp/ronbo/pdf
rsync --verbose --recursive  --times --checksum --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.pdf' --exclude='*' '/cygdrive/g/Users/TLougee/Books/Packet Publishing/' '/tmp/Todd/pdf'
find /tmp/Todd/pdf -type f -name \*.pdf -exec cp --verbose $(basename {}) /tmp/ronbo/pdf \;
rsync --verbose --checksum --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.pdf' --exclude='*' '/tmp/ronbo/pdf/' '/cygdrive/d/Todd/pdf'

echo 'Sharing epub books...'
mkdir -p /cygdrive/i/BitTorrenSync/Todd/epub
mkdir -p /tmp/Todd/epub
rm -rf /tmp/ronbo/epub
mkdir -p /tmp/ronbo/epub
rsync --verbose --recursive  --times --delete --checksum --prune-empty-dirs --human-readable --progress --include='*/' --include='*.epub' --exclude='*' '/cygdrive/g/Users/TLougee/Books/Packet Publishing/' '/tmp/Todd/epub'
find /tmp/Todd/epub -type f -name \*.epub -exec cp --verbose $(basename {}) /tmp/ronbo/epub \;
rsync --verbose --checksum --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.epub' --exclude='*' '/tmp/ronbo/epub/' '/cygdrive/i/BitTorrenSync/Todd/epub'

echo 'Sharing mobi books...'
mkdir -p /cygdrive/i/BitTorrenSync/Todd/mobi
mkdir -p /tmp/Todd/mobi
rm -rf /tmp/ronbo/mobi
mkdir -p /tmp/ronbo/mobi
rsync --verbose --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.mobi' --exclude='*' '/cygdrive/g/Users/TLougee/Books/Packet Publishing/' '/tmp/Todd/mobi'
find /tmp/Todd/mobi -type f -name \*.mobi -exec cp --verbose $(basename {}) /tmp/ronbo/mobi \;
rsync --verbose --checksum --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.mobi' --exclude='*' '/tmp/ronbo/mobi/' '/cygdrive/i/BitTorrenSync/Todd/mobi'

echo 'Sharing archive files...'
#mkdir -p /cygdrive/i/BitTorrenSync/Todd/zip
#rsync --verbose --recursive  --times --checksum --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.zip' --include='*.rar' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/cygdrive/i/BitTorrenSync/Todd/zip'

echo 'Sharing video files...'
mkdir -p /cygdrive/i/BitTorrenSync/Todd/video
rsync --verbose --checksum --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.mp4' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/cygdrive/i/BitTorrenSync/Todd/video'
