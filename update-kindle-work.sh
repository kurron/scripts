#!/bin/bash

#FROM=/cygdrive/c/cygwin64/home/RKurr/BitTorrentSync/Todd/mobi/
#FROM=/cygdrive/i/BitTorrenSync/Todd/mobi/
FROM=/cygdrive/i/BitTorrenSync/Todd\ Books/Apps/
TO=/cygdrive/e/documents/transparent-language

CMD="rsync --verbose --recursive --checksum --delete --prune-empty-dirs --human-readable --progress --itemize-changes --exclude='Packet Publishing/' --exclude='Free and Not Updated O?Reilly Books/' --exclude='*[Pp]????[Nn]*' --exclude='*[Ff]??[Xx]*' --exclude='*[Jj]????????[Tt]*' --exclude='*Head*' --exclude='*You Don?t Know*' --exclude='*[Nn]???[Xx]*' --exclude='*[Aa]?????[Rr]*' --exclude='*[Dd]??[Aa]*' --exclude='*[Mm]???[Oo]*' --exclude='*TI-84*' --exclude='*[Ff]????????[Ll]*' --exclude='*[Hh]????[Pp]*' --exclude='*[Hh]??[Ll]*' --exclude='*[Mm]?????[Ee]*' --exclude='*[Mm]???[Ll]*'--exclude='*[Ss]??????[Mm]*' --exclude='*SNMP*' --exclude='*[Dd]??[Pp]*' --exclude='*[Ff]???[Kk]*' --exclude='*[Dd]????[Oo]*' --exclude='*UX*' --exclude='*[Uu]??[Rr]*' --exclude='*[Pp]?????[Ee]*' --exclude='*[Ss]??????[Mm]*' --exclude='*[Ii]?????????[Tt]*' --exclude='*[Ee]???[Rr]*' --exclude ='*[Mm]r???[Ee]*' --exclude='*[Jj]????[Yy]*' --exclude='*[Mm]??[Ee]*' --include='*/' --include='[A-Za-z]*.mobi' --exclude='*' '$FROM' '$TO'"
echo eval $CMD
eval $CMD
