#!/bin/bash

sudo apt -y install i8kutils
sudo apt -y install lm-sensors
sensors
# This causes the fan driver to load properly.
sudo modprobe i8k force=1

sudo apt install fancontrol
sudo pwmconfig