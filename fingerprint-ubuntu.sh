#!/bin/bash

# For Dell systems having Shenzhen Goodix Technology Co.,Ltd. FingerPrint.
# See this post for further info: https://www.reddit.com/r/linux4noobs/comments/sp3iky/how_to_enable_fingerprint_login_in_ubuntu_on_dell/?ref=itsfoss.com

wget http://dell.archive.canonical.com/updates/pool/public/libf/libfprint-2-tod1-goodix/libfprint-2-tod1-goodix_0.0.4-0ubuntu1somerville1_amd64.deb

sudo apt install libfprint-2-tod1

sudo dpkg -i libfprint-2-tod1-goodix_0.0.4-0ubuntu1somerville1_amd64.deb