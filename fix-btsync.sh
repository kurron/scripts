#!/bin/bash

#     - name: BitTorrent Sync
#       docker:
#           name: btsync
#           hostname: "{{ ansible_hostname }}"
#           image: kurron/docker-bittorrent-sync
#           state: started
#           restart_policy: always
#           pull: always
#           net: host
#           ports:
#           - "1234:1234"
#           - "8888:8888"
#           volumes_from:
#           - btsync-data
#           env:
#               SERVICE_1234_NAME: btsync
#               SERVICE_8888_NAME: btsync-ui

docker run --detach --name btsync --hostname btsync --restart always --net host --publish 1234:1234 --publish 8888:8888 --volumes-from btsync-data kurron/docker-bittorrent-sync 
