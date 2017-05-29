#!/bin/bash

#set -ex

sudo groupadd --force starwars

# password is starwars

for i in luke leia han chewbacca kylo rey finn poe  
do
   echo "$i"
   sudo useradd --comment ${i} --password '$6$NGvwZMsd$E5D1ETakhf/y14kZ/t7W6ywwFJYbYHaVgzDaLUtFfMBP4yRc7feJzShQMtKKXXQag5jq6fe856QzRCR5g8QDS1' --create-home --user-group --groups starwars ${i}
done

sudo mkdir /home/shared-folder
sudo chown -R luke:starwars /home/shared-folder
sudo g+w /home/shared-folder
ls -l --all --human /home
