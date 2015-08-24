#!/bin/bash

# remember to stop and remove these containers by hand first

# use admin
# db.createUser( { user: "admin", pwd: "admin", roles: ["root"] } )
# db.auth( "admin", "admin" )
# db.createUser( { user: "readWrite", pwd: "readWrite", roles: [ "readWriteAnyDatabase" ] } )
# db.createUser( { user: "read", pwd: "read", roles: [ "readAnyDatabase" ] } )

docker run --detach --name mongodb-data --volume /data/db busybox
docker run --detach --name mongodb --hostname mongodb --publish 27017:27017 --volumes-from mongodb-data --restart always mongo --storageEngine=wiredTiger --notablescan --journalCommitInterval=300 --directoryperdb --auth
