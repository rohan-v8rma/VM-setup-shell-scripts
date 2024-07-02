#!/bin/bash

sudo apt upgrade

#Adding git to Ubuntu
sudo apt install git

#Adding Dropbox to Nautilus

sudo apt install -y python3-gpg

sudo apt install -y nautilus-dropbox

killall nautilus

sudo apt autoremove


#Adding dropboxignore to prevent directories like node_modules from syncing.
sudo snap install dropboxignore

echo "Once your files have finished syncing, navigate to the Dropbox directory and run 'dropboxignore genupi .'"


echo fs.inotify.max_user_watches=100000 | sudo tee -a /etc/sysctl.conf; sudo sysctl -p
# The reason for running this is explained here: https://www.dropboxforum.com/t5/Create-upload-and-share/Unable-to-monitor-dropbox-folder/td-p/394555

dropbox restart