#!/bin/bash

# Commands copied from https://docs.docker.com/engine/install/ubuntu/

# 1. Uninstall old version
sudo apt remove -y docker docker-engine docker.io containerd runc

# 2. Install docker.io, docker ce and docker ce cli

# A.
sudo apt install docker.io 

# B. docker-ce-cli : command line interface for docker engine, COMMUNITY EDITION. Maintained by Docker.
sudo apt install docker-ce-cli

# C. docker-ce : docker engine, COMMUNITY EDITION. Requires docker-ce-cli. Maintained by Docker.
sudo apt install docker-ce 

# 3. Verify that the Docker Engine installation is successful by running the hello-world image.
sudo docker run hello-world
