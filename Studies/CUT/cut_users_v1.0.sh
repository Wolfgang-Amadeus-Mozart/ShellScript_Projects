#!/bin/bash

#------------------------DESCRIPTION-------------------
#This script extracts the users from /etc/passwd and filters only the username

#------------------------VARIABLES---------------------
USERS="$(cat /etc/passwd | cut -d : -f 1)"
USER_MESSAGE="
    $(basename $0) - [OPTIONS] 

    -h - Help menu
    -v - Version
    -s - Ordering the output
"
VERSION="v1.0"


#------------------------Execution--------------------

case $1 in
  "-h") #show menu
    echo "$USER_MESSAGE" && exit 0
    ;;
  "-v") #show version
    echo "$VERSION" & exit 0
    ;;
  "-s") #show users sorted
    echo "$USERS" | sort && exit 0
    ;;
  *) #for any other option, shows "invalid option"
   echo "Invalid option"
    ;;
esac