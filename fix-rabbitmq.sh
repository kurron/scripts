#!/bin/bash

# remember to stop and remove these containers by hand first

docker run --detach --name rabbitmq-data --volume /var/lib/rabbitmq busybox
docker run --detach --name rabbitmq --hostname rabbitmq --publish 5672:5672 --publish 15672:15672 --volumes-from rabbitmq-data --restart always rabbitmq
