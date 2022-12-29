#!/bin/bash 

#iterate through files in a directory
path=/home/user/Linux_/scripts/
count=0
for f in $path/*
do  
  echo "File $f found."
  #((count++))
  #Or, 
  let count++
done

echo "Total $count files found."