#!/usr/bin/env bash

# this script creates the necessary containers for integration testing

docker pull docker.elastic.co/elasticsearch/elasticsearch:6.0.1
docker run --name elastic-test -p 9200:9200 -p 9300:9300 -d -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:6.0.1
sleep 45s
curl localhost:9200/_cat/health
/home/vagrant/Bitbucket/Orfeo/adp-dbcore/docker/elastic/elastic-search-setup.sh

docker pull scylladb/scylla:2.1.1
docker run --name some-scylla --volume /home/vagrant/Bitbucket/Orfeo/adp-dbcore/docker/scylla:/opt/resources -p 9042:9042 -d scylladb/scylla:2.1.1
sleep 15s
docker exec -it some-scylla nodetool status
docker exec some-scylla cqlsh -f /opt/resources/scylladb-setup.cql
docker exec -it some-scylla cqlsh -e 'DESC SCHEMA;'
