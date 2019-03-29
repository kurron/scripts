#!/usr/bin/env bash

# this script creates the necessary containers for integration testing

docker pull docker.elastic.co/elasticsearch/elasticsearch-oss:6.2.4
docker run --name elastic-test --hostname elasticsearch -p 9200:9200 -p 9300:9300 -d -e "discovery.type=single-node" --volume /tmp:/usr/share/elasticsearch/data docker.elastic.co/elasticsearch/elasticsearch-oss:6.2.4
echo Wating for Elasticsearch to fully come up....
sleep 45s
curl localhost:9200/_cat/health
/home/vagrant/Bitbucket/Orfeo/adp-dbcore/docker/elastic/elastic-search-setup.sh

#docker pull scylladb/scylla:2.1.1
#docker run --name some-scylla --hostname scylladb --volume /home/vagrant/Bitbucket/Orfeo/adp-dbcore/docker/scylla:/opt/resources -p 9042:9042 -d scylladb/scylla:2.1.1
#sleep 15s
#docker exec -it some-scylla nodetool status
#docker exec some-scylla cqlsh -f /opt/resources/scylladb-setup.cql
#docker exec -it some-scylla cqlsh -e 'DESC SCHEMA;'

docker pull docker.elastic.co/kibana/kibana-oss:6.2.4
docker run --name kibana-test --hostname kibana -p 5601:5601 -d -e "ELASTICSEARCH_URL=http://172.17.0.1:9200/" docker.elastic.co/kibana/kibana-oss:6.2.4 
#docker logs --follow kibana-test

#docker pull neo4j:3.3.5
#docker run --name neo4j --hostname neo4j -p 7474:7474 -p 7473:7473 -p 7687:7687 -d -e "NEO4J_AUTH=none" neo4j:3.3.5

docker pull localstack/localstack:latest
docker run --name localstack --hostname localstack --net host -d -e"PORT_WEB_UI=2020" -e "SERVICES=dynamodb,sqs,kinesis" -e "DEFAULT_REGION=us-west-2" localstack/localstack:latest

# create SQS queues via awslocal
awslocal sqs create-queue --queue-name adp-feed-ingest-request-development
awslocal sqs create-queue --queue-name adp-silonet-request-development
awslocal sqs create-queue --queue-name adp-supplier-ingestion-request-development
awslocal sqs create-queue --queue-name adp-webdam-notifications-development
awslocal sqs create-queue --queue-name asset-ingestion-development

#docker pull amazon/dynamodb-local:latest
#docker run --name dynamodb --hostname dynamodb --net host amazon/dynamodb-local:latest -inMemory -port 4569
