#!/bin/bash

# see what the free disk is labeled
lsblk

# turn off Docker
sudo service docker stop

# create the new file system -- will warn that you are doing an entire device and not a partition
#sudo mkfs -t ext4 -N <number_of_inodes> /dev/sdb
sudo mkfs -t ext4 -T small /dev/sdb

# create the new mount point
#sudo mkdir /var/lib/docker/overlay

# mount the new file system
sudo  mount /dev/sdb /var/lib/docker/overlay

# update /etc/fstab
# UUID=d47fc92f-80eb-4a34-a815-890fa961f45b /var/lib/docker/overlay  ext4  defaults,nofail  0  2 

# restart Docker
sudo service docker start
