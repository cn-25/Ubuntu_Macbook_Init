#!/usr/bin/env bash
# Install software
sudo snap install brave
snap install spotify
sudo snap install code --classic
sudo snap install node --classic
sudo apt-get install vim
sudo apt-get install git
sudo snap install bitwarden
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

#Install driver to fix sound
apt install wget make gcc linux-headers-generic
git clone https://github.com/davidjo/snd_hda_macbookpro.git
cd snd_hda_macbookpro/
sudo ./install.cirrus.driver.sh

#Fix Wake-from-sleep
sudo -s
echo 0 > /sys/bus/pci/devices/0000\:01\:00.0/d3cold_allowed

#Enable Firewall
sudo ufw enable
