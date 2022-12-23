#!/bin/bash

read -p "Enter two numbers: " num1 num2

if [ $num1 -gt $num2 ]
  then
  echo "num1 is greater then num2"
elif [ $num1 -eq $num2 ]
  then 
  echo 'num1 & num2 are equal'
else
  echo 'num1 is less than num2'
fi