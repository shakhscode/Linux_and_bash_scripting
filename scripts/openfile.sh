#!/bin/bash

#open a file and print the lines one by one

# Get the file name from the user

# Check if the file exists
if [ -f $1 ]; then     #give the filename as argument
  # Print the lines with line numbers
  n=1

  while read line; do

    echo "Line $n: $line"

    n=$((n+1))

  done < $file
  
else
  echo "Error: File not found."
fi
