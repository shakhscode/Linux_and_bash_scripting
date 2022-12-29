#!/bin/bash

#until loop

n=1

until (( $n > 10  ))     #this will work until the condition is  False.
do 
  echo "n = $n, and the condition is false, Hence, I am working!"
  (( n++ ))
done
