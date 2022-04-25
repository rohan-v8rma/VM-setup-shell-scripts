#!/bin/bash

timedatectl set-local-rtc 1

# Now if we boot into Windows, it takes the hardware clock to be as local time which is actually correct this time. 
# When you boot into Linux, your Linux system knows that the hardware clock is using local time, not UTC. 
# And hence, it doesn’t try to add the off-set this time.
#* This fixes the time difference issue between Linux and Windows in dual boot.

