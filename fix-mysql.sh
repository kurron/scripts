#!/bin/bash

# remember to stop and remove these containers by hand first

docker run --detach --name mysql-data --volume /var/lib/mysql --volume /etc/mysql/conf.d busybox
docker run --detach --name mysql --hostname mysql --publish 3306:3306 --volumes-from mysql-data --restart always --env MYSQL_ROOT_PASSWORD=sa --env MYSQL_USER=mysql --env MYSQL_PASSWORD=mysql --env MYSQL_DATABASE=sushe mysql
