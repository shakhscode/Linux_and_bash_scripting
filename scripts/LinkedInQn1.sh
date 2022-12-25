#!/bin/bash

read -p "Enter your pet type:" PET

if [ $PET = dog  ];then 
  echo "You have a dog"
fi

#Since if condition is dependent on a variable PET
#if no value is provided to that variable it will show an error.