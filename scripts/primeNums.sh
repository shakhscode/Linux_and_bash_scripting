#!/bin/bash

#read -p "Enter the lower number: " l
#read -p "Enter the upper number: " u

l=1
u=100

if [ $l -eq 1 ]
then 
  l=$(( $l+1 ))
fi


declare -a primes

for (( num=$l; num<=$u; num++ ))
do
  
  #intially assuming it is a prime number
  it_is_prime=1

  #Now check whether it is or not
  for (( j=2; j<num; j++ ))
  do 
    #if it is divisble by any number then it is not prime
    if [ $(($num % $j)) -eq 0 ]
    #or, (( num % j == 0 ));
    then
        it_is_prime=0
        break
    fi
  done

  #for loop done, if the number is not divisble by any other number.
  #i.e it is a prime number and it-is_prime status is not changed
  
  if [ $it_is_prime -eq 1 ]
  then 
  primes=( ${primes[*]} $num )
  fi

done

echo "Primes numbers between $(( $l-1 )) and $u:"
echo  ${primes[@]}

echo "Total ${#primes[*]} prime numbers found."