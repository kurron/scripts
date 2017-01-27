#!/bin/bash

FROM=/cygdrive/e/
TO=/cygdrive/f

echo Copying TLO SA files from $FROM to $TO 
rsync --verbose \
      --recursive \
      --checksum \
      --delete \
      --prune-empty-dirs \
      --human-readable \
      --progress \
      --itemize-changes \
      "$FROM" "$TO"
