#!/usr/bin/env bash

# turn an externally mounted disk into a pool and dataset with no reducancy
 
ls -lh /dev/disk/by-id/

if [ "$1" = "" ]
then
 echo "Usage: $0 WID label dataset"
 exit
fi

if [ "$2" = "" ]
then
 echo "Usage: $0 WID label dataset"
 exit
fi

ID=${1}
LABEL=${2}
DATASET_NAME=${3:-video}

POOL="sudo zpool create -f -o autoexpand=off -m /mnt/${LABEL} ${LABEL} /dev/disk/by-id/${ID}"
echo $POOL

DATASET="sudo zfs create ${LABEL}/${DATASET_NAME}"
echo $DATASET

ATIME="sudo zfs set atime=off ${LABEL}/${DATASET_NAME}"
COMPRESSION="sudo zfs set compression=lz4 ${LABEL}/${DATASET_NAME}"
EXEC="sudo zfs set exec=off ${LABEL}/${DATASET_NAME}"
RECORD_SIZE="sudo zfs set recordsize=1M ${LABEL}/${DATASET_NAME}"
echo $ATIME
echo $COMPRESSION
echo $EXEC
echo $RECORD_SIZE

FIX="sudo chown -R ${USER}:${USER} /mnt/${LABEL}"
echo $FIX

set -x
$POOL && $DATASET && $ATIME && $COMPRESSION && $EXEC && $RECORD_SIZE && $FIX
