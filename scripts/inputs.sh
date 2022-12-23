#!/bin/bash

#or the best way is:
echo "Enter the numbers: "
read -a numbers

echo "The numbers are: ${numbers[@]}"

#Working of default input taker
read -p "Enter a number: "
echo "The number is: $REPLY"
#reply is the system variable when ther is no variable used, 
#it takes user input