#!/usr/bin/env bash

# https://www.ubuntupit.com/handbrake-a-free-and-open-source-transcoder-for-linux/ 

PROGNAME=$(basename $0)
error_exit()
{
          echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
          exit 1
}

#echo Installing Handbrake
#sudo add-apt-repository ppa:stebbins/handbrake-releases || error_exit "Unable to add repository."
#sudo apt-get update || error_exit "Unable to update packages."
#sudo apt-get install handbrake-gtk handbrake-cli || error_exit "Unable to install packages."

echo Bulding Handbrake from source
# to build from source
# https://handbrake.fr/docs/en/latest/developer/build-linux.html
sudo apt-get update && sudo apt-get install autoconf automake autopoint appstream build-essential cmake git libass-dev libbz2-dev libfontconfig1-dev libfreetype6-dev libfribidi-dev libharfbuzz-dev libjansson-dev liblzma-dev libmp3lame-dev libnuma-dev libogg-dev libopus-dev libsamplerate-dev libspeex-dev libtheora-dev libtool libtool-bin libturbojpeg0-dev libvorbis-dev libx264-dev libxml2-dev libvpx-dev m4 make meson nasm ninja-build patch pkg-config python tar zlib1g-dev && sudo apt-get install gstreamer1.0-libav intltool libappindicator-dev libdbus-glib-1-dev libglib2.0-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgtk-3-dev libgudev-1.0-dev libnotify-dev libwebkit2gtk-4.0-dev
cd /tmp && git clone https://github.com/HandBrake/HandBrake.git && cd HandBrake
./configure --launch-jobs=$(nproc) --launch
sudo make --directory=build install
