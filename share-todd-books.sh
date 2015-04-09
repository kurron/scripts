#!/bin/bash

ROOT=/cygdrive/c/Users/rkurr/BtSync/Todd

echo 'Rsyncing from G drive to ForDesktop'
#rsync --recursive --times --verbose --progress --delete --checksum --itemize-changes --protect-args --prune-empty-dirs --human-readable --progress '/cygdrive/g/Users/TLougee/Books/' '/cygdrive/c/Users/rkurr/BtSync/ForDesktop/Transparent Language'

echo 'Rsyncing from G drive to ForMobile'
#rsync --recursive --times --verbose --progress --delete --checksum --itemize-changes --protect-args --prune-empty-dirs --human-readable --progress --include='*/' --include='*.pdf' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/cygdrive/c/Users/rkurr/BtSync/ForMobile/Transparent Language'

#echo 'Creating shared folder...'
#rm -rf /cygdrive/c/Users/rkurr/BtSync/Todd 
#mkdir /cygdrive/c/Users/rkurr/BtSync/Todd 

echo 'Sharing PDF books...'
#mkdir -p /cygdrive/c/Users/rkurr/BtSync/Todd/pdf
rsync --verbose --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.pdf' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/cygdrive/c/Users/rkurr/BtSync/Todd/pdf'

echo 'Sharing epub books...'
#mkdir -p /cygdrive/c/Users/rkurr/BtSync/Todd/epub
rsync --verbose --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.epub' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/cygdrive/c/Users/rkurr/BtSync/Todd/epub'

echo 'Sharing mobi books...'
#mkdir -p /cygdrive/c/Users/rkurr/BtSync/Todd/mobi
rsync --verbose --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.mobi' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/cygdrive/c/Users/rkurr/BtSync/Todd/mobi'

echo 'Sharing archive files...'
#mkdir -p /cygdrive/c/Users/rkurr/BtSync/Todd/zip
rsync --verbose --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.zip' --include='*.rar' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/cygdrive/c/Users/rkurr/BtSync/Todd/zip'

echo 'Sharing video files...'
mkdir -p /cygdrive/c/Users/rkurr/BtSync/Todd/video
rsync --verbose --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.mp4' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/cygdrive/c/Users/rkurr/BtSync/Todd/video'
