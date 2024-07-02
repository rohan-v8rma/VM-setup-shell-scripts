#!/bin/bash

#Adding Python
sudo apt update
sudo apt install -y python3
sudo apt install -y python3-pip
sudo apt install -y python3-venv
sudo apt install -y idle-python3.10

# Jupyter
pip3 install jupyter



#Adding C++
sudo apt update
sudo apt install -y build-essential
sudo apt install -y manpages-dev

# Adding NVM
# https://github.com/nvm-sh/nvm#installing-and-updating


# Replace version with the latest version before running the script
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash


#Adding Node.js framework and package manager (npm) of Node.js
# sudo apt install -y nodejs
# sudo apt install -y npm

