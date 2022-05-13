#!/bin/bash

# NOTE that spacing matters a lot in bash scripts 
# because a space can be taken as an argument


x=1
y=1

if [[ $x -eq $y ]]
# spacing is important in this IF condition

then 
echo "$x equal to $y" 
# NOTE how the command substitution operator works within the echo command as well

elif [[ $x -gt $y ]]

then
echo "$x greater than $y" 

else
echo "$x lesser than $y"

fi