#!/bin/bash

#sed command use slashes for separating section
#Scaping would alow us to use sed sections with the dashes
#Here we are using backlashes for espacping the slashes
echo '/home/json' | sed 's/\/home\/json/\/export\/users\/filipe/'

#It's also possible to delimiter the escape area with any delimiter character
# Pound (#) is being used for scaping this section
echo '/etc/hosts' | sed 's#/etc/hosts#/etc/passwd#'




