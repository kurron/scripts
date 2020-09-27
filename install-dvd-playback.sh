#!/usr/bin/env bash

# https://itsfoss.com/play-dvd-ubuntu-1310/ 

#sudo apt install libdvd-pkg
#sudo dpkg-reconfigure libdvd-pkg
#sudo apt-get install vlc

curl --output /tmp/libdvdcss2.deb http://download.videolan.org/pub/debian/stable/libdvdcss2_1.2.13-0_amd64.deb 
sudo dpkg -i /tmp/libdvdcss2.deb
sudo apt-get install -f

#sudo apt-get install libdvdread4 libdvdnav4
 
