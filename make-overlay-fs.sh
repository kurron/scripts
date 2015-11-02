#!/bin/bash

# see what the free disk is labeled
lsblk

# turn off Docker
sudo service docker stop

# create a new partition
sudo fdisk /dev/sdb

# create the new file system -- will warn that you are doing an entire device and not a partition
#sudo mkfs -t ext4 -N <number_of_inodes> /dev/sdb
#sudo mkfs -t ext4 -T small /dev/sdb
sudo /sbin/mkfs.xfs /dev/sdb1

# create the new mount point
#sudo mkdir /var/lib/docker/overlay

# mount the new file system
sudo  mount /dev/sdb1 /var/lib/docker/overlay

# update /etc/fstab
# UUID=d47fc92f-80eb-4a34-a815-890fa961f45b /var/lib/docker/overlay  ext4  defaults,nofail  0  2 
# UUID=c4224e44-e0e4-4fd6-b57b-db8cc23cf956 /var/lib/docker/overlay xfs defaults,nofail  0  2

# test mounting
sudo mount -a

# restart Docker
sudo service docker start
