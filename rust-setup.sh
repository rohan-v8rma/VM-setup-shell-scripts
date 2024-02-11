#!/bin/bash

cd ~/Downloads || echo "$HOME/Downloads directory not present."

curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
