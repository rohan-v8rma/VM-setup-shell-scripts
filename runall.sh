#!/bin/bash
cd $(dirname $(readlink -f ./runall.sh))

./test.sh
./compilers-and-interpreters.sh
./dropbox.sh
./look-and-feel.sh
./microsoft-edge.sh
./vs-code.sh
clear