#!/bin/bash

#Global variable
NUMBER=1


#By good practices, global variables are writting capitalized
#And local variables are lowered
#But in this  Case, I have to give the same name for GLOBAl and local variable to demonstrate that, even
#With the same name, they different variables
function local_variable_test () {
	local NUMBER=2 #defining the variable to be accessible only through this function
	echo $NUMBER 
}

echo "Global variable is $NUMBER"
echo "Local Variable is $(local_variable_test)"
