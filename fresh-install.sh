#!/usr/bin/env bash

# installs desired applications for a newly installed OS 

PROGNAME=$(basename $0)
error_exit()
{
          echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
          exit 1
}

sudo apt install ssh || error_exit "Unable to install SSH."
sudo apt install git || error_exit "Unable to install Git."
sudo apt install nfs-common || error_exit "Unable to install NFS client."
sudo apt install gnome-tweaks || error_exit "Unable to install Gnome Tweaks."

sudo snap install code --classic || error_exit "Unable to install Visual Studio Code."
sudo snap install chromium || error_exit "Unable to install Visual Studio Code."
sudo snap install vlc || error_exit "Unable to install Visual Studio Code."
sudo snap install snap-store || error_exit "Unable to install Visual Studio Code."
sudo snap install slack --classic || error_exit "Unable to install Slack."
sudo snap install signal-desktop || error_exit "Unable to install Signal."
sudo snap install ffmpeg || error_exit "Unable to install FFmpeg."
sudo snap install htop || error_exit "Unable to install htop."
sudo snap install plexmediaserver || error_exit "Unable to install Plex Media Server."
sudo snap install youtube-dl || error_exit "Unable to install YouTube DL."
sudo snap install obs-studio || error_exit "Unable to install OBS Studio."

#sudo snap install clion --classic || error_exit "Unable to install CLion."
#sudo snap install datagrip --classic || error_exit "Unable to install DataGrip."
#sudo snap install goland --classic || error_exit "Unable to install GoLand."
#sudo snap install kotlin --classic || error_exit "Unable to install Kotlin."
#sudo snap install kotlin-native --classic || error_exit "Unable to install Kotlin Native."
#sudo snap install intellij-idea-community --classic || error_exit "Unable to install IntelliJ IDEA CE."
#sudo snap install sudo snap install intellij-idea-educational --classic || error_exit "Unable to install IntelliJ IDEA Educational."
#sudo snap install intellij-idea-ultimate --classic || error_exit "Unable to install IntelliJ IDEA Ultimate."
#sudo snap install phpstorm --classic || error_exit "Unable to install PhpStorm."
#sudo snap install pycharm-community --classic || error_exit "Unable to install PyCharm CE."
#sudo snap install pycharm-educational --classic || error_exit "Unable to install PyCharm EDU."
#sudo snap install pycharm-professional --classic || error_exit "Unable to install PyCharm Pro."
#sudo snap install rider --classic || error_exit "Unable to install Rider."
#sudo snap install rubymine --classic || error_exit "Unable to install RubyMine."
#sudo snap install webstorm --classic || error_exit "Unable to install WebStorm."

sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt update && sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak

gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true

sudo sh -c 'echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" >> /etc/apt/sources.list.d/virtualbox.list' || error_exit "Unable to add VirtualBox repository."
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add - || error_exit "Unable to install VirtualBox repository key."
sudo apt-get update || error_exit "Unable to update repositories."
sudo apt-get install virtualbox-6.1 || error_exit "Unable to install VirtualBox."
