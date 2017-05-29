#!/bin/bash

#set -ex

sudo groupadd --force starwars
sudo groupadd --force jedi
sudo groupadd --force sith

# password is starwars

for i in luke leia han chewbacca kylo rey finn poe darth 
do
   echo "$i"
   sudo useradd --comment ${i} --password '$6$NGvwZMsd$E5D1ETakhf/y14kZ/t7W6ywwFJYbYHaVgzDaLUtFfMBP4yRc7feJzShQMtKKXXQag5jq6fe856QzRCR5g8QDS1' --create-home --user-group --groups starwars ${i}
done

sudo mkdir /home/shared-folder
sudo chown -R luke:starwars /home/shared-folder
sudo chmod g+w /home/shared-folder

sudo mkdir /home/jedi-folder
sudo chown -R luke:jedi /home/jedi-folder
sudo chmod g+w /home/jedi-folder

sudo mkdir /home/sith-folder
sudo chown -R darth:sith /home/sith-folder
sudo chmod g+w /home/sith-folder

sudo usermod --append --groups jedi luke
sudo usermod --append --groups jedi rey
sudo usermod --append --groups sith kylo
sudo usermod --append --groups sith darth

ls -l --all --human /home
