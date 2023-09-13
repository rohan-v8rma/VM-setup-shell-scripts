#!/bin/bash

sudo apt update
sudo apt -y install default-jdk

# Used a subshell so that the current working directory of the main shell does not get changed
( 
    cd ~/Downloads
    wget -c https://downloads.apache.org/netbeans/netbeans-installers/14/Apache-NetBeans-14-bin-linux-x64.sh
    chmod +x Apache-NetBeans-14-bin-linux-x64.sh
    ./Apache-NetBeans-14-bin-linux-x64.sh 
)

