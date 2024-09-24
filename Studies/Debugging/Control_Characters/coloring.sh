#!/bin/bash

#this script shows the pattern for colouring an output
#Needs to be followed by "\033[Number1;number2m<String>"
#We can optionally use just 1 number
#The first number is for the color, the second is for some modifications like Bold or

echo -e "\033[30;1mFilipe"
echo -e "\033[31;2mFilipe"
echo -e "\033[32;3mFilipe"
echo -e "\033[33;4mFilipe"
echo -e "\033[34;5mFilipe"
echo -e "\033[35;6mFilipe"
echo -e "\033[36;7mFilipe"
echo -e "\033[37;1mFilipe"

