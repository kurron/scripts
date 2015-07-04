#!/bin/bash

#     - name: Plex
#       docker:
#           name: plex
#           hostname: plex
#           image: timhaak/plex 
#           state: started
#           restart_policy: always
#           pull: always
#           net: host
#           ports:
#           - "32400:32400"
#           volumes_from:
#           - plex-data
#           - btsync-data
#           volumes:
#           - /mnt/nas:/data

docker run --detach --name plex --hostname plex --restart always --net host --publish 32400:32400 --volumes-from plex-data --volumes-from btsync-data --volume /mnt/nas --volume /data timhaak/plex
