#!/bin/bash

read -p "Enter any character: " char

case $char in 
   [a-z] )    #patttern 1
   echo "It is a small case alphabet." ;;

   [A-Z] ) #patttern 2
   echo "It is an uppercase alphabet." ;;

   [0-9] ) #pattern 3
   echo "It is a numeric character." ;;

   ? ) #pattern 4, for special characters
   echo "It is a special character.";;

   * ) #default pattern
   echo "Sorry! I failed to recognize it."

#end the case
esac 