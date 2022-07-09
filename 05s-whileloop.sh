#!/bin/bash

flag=1

while [[ flag -lt 10 ]]; do 

    echo ${flag}
    flag=$((${flag}+1))
    #We place the the whole mathematical expression within (()) for it to be 
done