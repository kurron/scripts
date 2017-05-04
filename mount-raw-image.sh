#!/bin/bash

# https://major.io/2010/12/14/mounting-a-raw-partition-file-made-with-dd-or-dd_rescue-in-linux/

IMAGE=${1:-windows-10.raw}
OFFSET=${2:-1159168}
MOUNT_DIR=${3:-/mnt/raw}
SECTOR_SIZE=${4:-512}

# See what type of drive we are dealing with
file ${IMAGE} 
echo

# See what the partitions and sector sizes are
fdisk -l ${IMAGE} 
echo

# an example of mounting a partition
OFFSET=$((${SECTOR_SIZE}*${OFFSET}))
MOUNT="sudo mount -o ro,loop,offset=${OFFSET} ${IMAGE} ${MOUNT_DIR}"
echo Try this command: ${MOUNT}
