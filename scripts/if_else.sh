#!/bin/bash

read -p "Enter a number: " num1

if [ $num1 -ge 0 ]
   then 
   echo "It is a positive number."
else
   echo "It is a negative number."
fi