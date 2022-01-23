#!/bin/bash



sudo apt upgrade

#Adding GitHub to Ubuntu
sudo apt-get install git

#Adding Dropbox to Nautilus
sudo apt-get install python3-gpg
sudo apt-get install -y gnome-common libnautilus-extension-dev python3-gi python3-docutils
cd ~/Downloads
git clone https://github.com/dropbox/nautilus-dropbox.git
cd ~/Downloads/nautilus-dropbox
./autogen.sh
make
sudo make install
./dropbox start -i
killall nautilus
sudo apt autoremove

