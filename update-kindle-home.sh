#!/bin/bash

FROM=/cygdrive/i/BitTorrenSync/ForDesktop/Books/mobi/
TO=/cygdrive/e/documents/personal

echo 'Copying mobi books...'
rsync --verbose --recursive --checksum --delete --prune-empty-dirs --human-readable --progress --itemize-changes --include='*/' --include='*.mobi' --exclude='*' $FROM $TO
