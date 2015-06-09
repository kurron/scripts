#!/bin/bash

# remember to stop and remove these containers by hand first

docker run --detach --name redis-data --volume /data busybox
docker run --detach --name redis --hostname redis --publish 6379:6379 --volumes-from redis-data --restart always redis
