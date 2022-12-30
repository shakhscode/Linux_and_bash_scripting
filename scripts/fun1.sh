#!/bin/bash

#define the function
function primeNumbers(){

l=$1
#will take argument 1

u=$2
#will take argument2

if [ $l -eq 1 ]
then 
  l=$(( $l+1 ))
fi

declare -a primes
# Iterate through the range
for (( i=$l; i<=$u; i++ ))
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
    primes=( ${primes[*]} $i )
  fi

done
#print all the primes
echo ${primes[*]}

#return the total number of prime numbers found
return ${#primes[@]}
}

#Now call the function and set the return value to a variable
primeNumbers $1 $2  #call the function with the arguments given to the script
returned=$?

echo "Total $returned prime numbers found"

