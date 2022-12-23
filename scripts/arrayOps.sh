#!/bin/bash

#define a numerically indexed array
arr1=(12 15 78)

#define an associative array
declare -A arr2=([A]=2 [B]=23 [C]=90)

#extract a single element 
echo 'Extracting a single element'
var1=${arr1[1]}
var2=${arr2[B]}

echo "${var1} is extracted from the arr1 "
echo "${var2} is extracted from the arr2 "

#extract all elements
echo Extracting all elements
echo "Array 1, numerically indexed = ${arr1[*]}"
echo "Array 2, associative = ${arr2[@]}"

#print length
echo "Length of arr1: ${#arr1[*]}"

#get index 
echo "Indices of arr1 ${!arr1[@]}"
#get keys
echo "Keys of arr2: ${!arr2[@]}"


#add new elements
arr1[3]="100"
arr2[D]="Ho"

echo "arr1 after adding new element: ${arr1[*]}"
echo "arr2 after adding new element: ${arr2[*]}"

#update values 
#Change the value for the D key in arr2
arr2[D]=123
echo "arr2 after updating the value for D: ${arr2[*]}"


#delete elements
unset arr1[-1]
unset arr2[D]
echo "arr1 after deleting an element: ${arr1[*]}"
echo "arr2 after deleting an element: ${arr2[*]}"
