#!/bin/bash

bash -c "$(current_theme=$(gsettings get org.gnome.desktop.interface color-scheme);next_theme=$([[ $current_theme = "'prefer-dark'" ]] && echo 'prefer-light' || echo 'prefer-dark');gsettings set org.gnome.desktop.interface color-scheme $next_theme)"