#!/bin/bash 

#while loop
#need to define the variable first
n=1
while [ $n -le 10 ]
do 
  echo "$n"
  n=$(( n+1 ))
done