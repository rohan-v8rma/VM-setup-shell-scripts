#!/bin/bash

sudo apt upgrade

#Adding GitHub to Ubuntu
sudo apt install git

#Adding Dropbox to Nautilus

sudo apt install python3-gpg

sudo apt install -y nautilus-dropbox

killall nautilus

sudo apt autoremove
