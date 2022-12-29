#!/bin/bash

# Set the lower and upper limits of the range
lower=1
upper=100

# Iterate through the range
for (( i=$lower; i<=$upper; i++ ))
do
  # Check if the current number is prime
  is_prime=1
  for (( j=2; j<i; j++ ))
  do
    if [ $(($i % $j)) -eq 0 ]
    then
      is_prime=0
      break
    fi
  done

  # If the number is prime, print it
  if [ $is_prime -eq 1 ]
  then
    echo $i
  fi
done
