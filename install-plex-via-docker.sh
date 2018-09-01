#!/usr/bin/env bash

USER_ID=$(id -u $(whoami))
GROUP_ID=$(id -g $(whoami))
HOME_DIR=$(cut -d: -f6 < <(getent passwd ${USER_ID}))

echo Creating NFS volume
NFS="docker volume create --driver local --opt type=nfs --opt o=addr=192.168.1.234,ro --opt device=:/media --name nfs-docker"
echo ${NFS}
${NFS}

docker volume ls

echo Pulling current image
docker pull plexinc/pms-docker:latest

PLEX="docker run --detach \
                --name plex \
                --network host \
		--restart unless-stopped \
                --env TZ=\"America/New_York\" \
                --env PLEX_CLAIM=\"claim-ZXLwxg33wjZpyqYCsuhb\" \
                --env PLEX_UID=${USER_ID} \
                --env PLEX_GID=${GROUP_ID} \
                --env CHANGE_CONFIG_DIR_OWNERSHIP=true \
                --volume ${HOME_DIR}/Plex:/config \
                --volume /tmp:/transcode \
                --volume nfs-docker:/data:ro \
     plexinc/pms-docker" 
echo Creating container
echo ${PLEX}
${PLEX}

