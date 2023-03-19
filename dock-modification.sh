#!/bin/bash

#MacOS dock (changing the physical properties of the dock)

gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 64

#MacOS icons

cd ~/Downloads

git clone https://github.com/vinceliuice/McMojave-circle

cd ~/Downloads/McMojave-circle

./install.sh

cd ~