#!/bin/bash

sudo apt upgrade

#Adding GitHub to Ubuntu
sudo apt install git

#Adding Dropbox to Nautilus

sudo apt install -y python3-gpg

sudo apt install -y nautilus-dropbox

killall nautilus

sudo apt autoremove


#Adding dropboxignore to prevent directories like node_modules from syncing.
sudo snap install dropboxignore

echo "Once your files have finished syncing, navigate to the Dropbox directory and run 'dropboxignore genupi .'"
