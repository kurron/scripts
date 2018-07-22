#!/usr/bin/env bash

# supposed to allow you to play Blu-Ray in VLC

sudo apt-get -y install vlc libaacs0 libbluray-bdj libbluray2
mkdir -p ~/.config/aacs/
cd ~/.config/aacs/
wget http://vlc-bluray.whoknowsmy.name/files/KEYDB.cfg
