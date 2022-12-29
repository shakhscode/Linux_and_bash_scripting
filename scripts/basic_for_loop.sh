#!/bin/bash

#synatx 1: Similar to python logic
for i in {10..1..-1}
#Here we don't need to define the increment manually
do 
  echo "Value of i = $i"
done


#Syntax 2, like C

s=1
e=10

for (( i=$s; i<=$e; i++ ))
#starting from $start, increment it by i = i+1 
# and execute onlyif i<$end condition is True
# for (( initialization; ending_condition; increment/decrement ))
do 
  echo "Value of i = $i"
done