#!/bin/bash


#Adding Gnome Tweaks
sudo add-apt-repository universe

# For Ubuntu 20.04, the name was gnome-tweak-tool
# For Ubuntu 22.04, the name is gnome-tweaks
sudo apt install -y gnome-tweaks


echo "Search for Hide Clock extension, by changing the sort by filters until you find it. Install it to hide the clock."

sudo apt install gnome-shell-extensions gnome-shell-extension-manager -y