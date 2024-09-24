#!/bin/bash

#------------------------DESCRIPTION-------------------
#This script extracts the users from /etc/passwd and filters only the username
#In this new version, i'll be using key flags

#------------------------VARIABLES---------------------
USERS="$(cat /etc/passwd | cut -d : -f 1)"
USER_MESSAGE="
    $(basename $0) - [OPTIONS] 

    -h - Help menu
    -v - Version
    -s - Ordering the output
    -u - Uppercase
"
VERSION="v1.1"
KEY_SORTED=0
KEY_UPPERCASE=0


#------------------------Execution--------------------
while test -n "$1"
do
  case $1 in
    "-h") 
      echo "$USER_MESSAGE" && exit 0
      ;;
    "-v") 
      echo "$VERSION" & exit 0
      ;;
    "-s") #Turning the key "on" 
        KEY_SORTED=1
      ;;
    "-u") #Turning the key "on" 
        KEY_UPPERCASE=1
      ;;
    *) 
    echo  "INVALID OPTIONS" && exit 1
      ;;
  esac
  shift #moves the value to the left, then read a new value, so we can use multipleotions
done

[ $KEY_SORTED -eq 1 ]    && USERS=$(echo "$USERS" | sort) #Modifys the USERS variable to a sorted list
[ $KEY_UPPERCASE -eq 1 ] && USERS=$(echo "$USERS" | tr [a-z] [A-Z]) #Modifys the USERS variable to a uppercased version

echo "$USERS"