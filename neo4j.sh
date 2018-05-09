#!/usr/bin/env bash

# launches a new Neo4J database using a local directory for storage
# https://github.com/neo4j/docker-neo4j-publish/blob/de5c2157b11dbf2c7256b4aceca84313a2b8350c/3.3.5/community/docker-entrypoint.sh
# https://github.com/neo4j/docker-neo4j-publish/blob/de5c2157b11dbf2c7256b4aceca84313a2b8350c/3.3.5/community/Dockerfile

# To avoid issues arising from port mapping, we use the host's networking stack

DATA_DIRECTORY=${1:-$HOME/Neo4J/data}
ENVIRONMENT_FILE=${2:-neo4j-environment.properties}
RAM_HARD=${3:-536870912}

USER_ID=$(id -u $(whoami))
GROUP_ID=$(id -g $(whoami))

echo 'Creating data storage directory'
MKDIR="mkdir -p ${DATA_DIRECTORY}"
echo ${MKDIR}
${MKDIR}

CMD="docker run --detach \
                --env-file ${ENVIRONMENT_FILE} \
                --hostname neo4j \
                --memory ${RAM_HARD} \
                --name neo4j \
                --network host \
                --restart always \
                --user ${USER_ID}:${GROUP_ID} \
                --volume=${DATA_DIRECTORY}:/data \
                neo4j"

#                --log-driver aws \
#                --log-opt list
echo ${CMD}
${CMD}

echo 'Tailing the logs...'
docker logs --follow neo4j
