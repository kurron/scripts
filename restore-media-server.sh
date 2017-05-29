#!/bin/bash

set -ex

# you must be in the Git project you wish to export
HOSTNAME=$(hostname)
DESTINATION=${2:-/tmp/bob}

sudo mkdir --parents --verbose /mnt/${HOSTNAME}-pc
sudo mount --read-only nas:/${HOSTNAME}-pc /mnt/${HOSTNAME}-pc
ls -h /mnt/${HOSTNAME}-pc

sudo service plexmediaserver stop
sudo rsync --verbose --checksum --recursive --delete --human-readable --progress --itemize-changes /mnt/${HOSTNAME}-pc/ '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server'

sudo chown -R plex:plex '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/'
sudo service plexmediaserver restart
sudo tail -f '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Logs/Plex Media Server.log'
