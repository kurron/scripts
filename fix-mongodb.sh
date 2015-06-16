#!/bin/bash

# remember to stop and remove these containers by hand first

docker run --detach --name mongodb-data --volume /data/db busybox
docker run --detach --name mongodb --hostname mongodb --publish 27017:27017 --volumes-from mongodb-data --restart always mongo --storageEngine=wiredTiger --notablescan --journalCommitInterval=300
