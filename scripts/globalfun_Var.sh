#!/bin/bash 

function showName {
    name=$1
    echo "Hello $name"
}

#Now print at gloabl (script level)
name="Shakh"
echo "Hello $name"

#Now call the function 

showName Sikili

#now print this
echo "Hello $name"
#It should have print the global name=Shakh, but it will print the 
#name obtained from function.

