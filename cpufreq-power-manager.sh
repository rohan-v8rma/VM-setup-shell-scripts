#!/bin/bash

#* Installing `cpufreq` power manager

sudo apt -y install indicator-cpufreq
sudo apt autoremove

#* Adding support of this software for LXDE

cd ~/Downloads

git clone https://github.com/rohan-verma19/indicator-cpufreq.git
cd ./indicator-cpufreq/indicator_cpufreq

sudo mv --force cpufreq.py /usr/lib/python3/dist-packages/indicator_cpufreq
sudo mv --force indicator.py /usr/lib/python3/dist-packages/indicator_cpufreq

#? --force OR -f flag prevents prompting before overwriting the file


#* Removing `cpufreq` power manager

# sudo apt purge indicator-cpufreq