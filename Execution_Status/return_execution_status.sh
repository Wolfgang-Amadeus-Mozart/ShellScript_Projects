#!/bin/bash

#storaging hosts
HOST1="google.com"
HOST2="255.255.255.255"

#reading number
echo "Enter a number between 1 and 2:"
read NUM


case $NUM in
  1) #This ping will success, the exit status is 0
    ping -c 1 $HOST1
    ;;
  2)#This ping will fail, the exit status is different than 0
    ping -c 1 $HOST2
    ;;
  *)
    echo "Invalid number!"
    ;;
esac

#printing the exit status
echo "$?"

