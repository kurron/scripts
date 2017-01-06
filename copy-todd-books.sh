#!/bin/bash

echo 'Copying mobi books...'
mkdir -p /cygdrive/d/Todd/mobi
rm -rf /tmp/Todd
mkdir -p /tmp/Todd
rm -rf /tmp/Ron
mkdir -p /tmp/Ron
rsync --verbose --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.mobi' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/tmp/Todd'
find /tmp/Todd -type f -name \*.mobi -exec cp --verbose $(basename {}) /tmp/Ron \;
rsync --verbose --checksum --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.mobi' --exclude='*' '/tmp/Ron/' '/cygdrive/d/Todd/mobi'

echo 'Copying epub books...'
mkdir -p /cygdrive/d/Todd/epub
rm -rf /tmp/Todd
mkdir -p /tmp/Todd
rm -rf /tmp/Ron
mkdir -p /tmp/Ron
rsync --verbose --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.epub' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/tmp/Todd'
find /tmp/Todd -type f -name \*.epub -exec cp --verbose $(basename {}) /tmp/Ron \;
rsync --verbose --checksum --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.epub' --exclude='*' '/tmp/Ron/' '/cygdrive/d/Todd/epub'

echo 'Copying PDF books...'
mkdir -p /cygdrive/d/Todd/pdf
rm -rf /tmp/Todd
mkdir -p /tmp/Todd
rm -rf /tmp/Ron
mkdir -p /tmp/Ron
rsync --verbose --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.pdf' --exclude='*' '/cygdrive/g/Users/TLougee/Books/' '/tmp/Todd'
find /tmp/Todd -type f -name \*.pdf -exec cp --verbose $(basename {}) /tmp/Ron \;
rsync --verbose --checksum --recursive  --times --delete --prune-empty-dirs --human-readable --progress --include='*/' --include='*.pdf' --exclude='*' '/tmp/Ron/' '/cygdrive/d/Todd/pdf'
