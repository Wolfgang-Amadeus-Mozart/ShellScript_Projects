#!/usr/bin/env bash

#Initializing array
NUMBERS=()

COUNTER=0

for i in $(seq 10)
    do 
        NUMBERS+=($i) #appeding item on arrays
done

#Counting based on the array lenght
                      #Number of elements in this array
while [[ $COUNTER -lt ${#NUMBERS[@]} ]]
    do
        echo $COUNTER
        COUNTER=$(($COUNTER+1))
done

echo "${#NUMBERS[@]}"