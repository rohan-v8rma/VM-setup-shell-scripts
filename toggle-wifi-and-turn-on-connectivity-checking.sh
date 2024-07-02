#!/bin/bash

# Add this to Super + W keybind.

bash -c "nmcli r wifi \"$([[ $(nmcli r wifi) = disabled ]] && echo 'on' || echo 'off')\" && busctl --system set-property org.freedesktop.NetworkManager \"/org/freedesktop/NetworkManager\" org.freedesktop.NetworkManager ConnectivityCheckEnabled \"b\" 1"

