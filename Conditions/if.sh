#!/usr/bin/env bash

VAR1="Filipe"
VAR2="Filipe"
VAR3="Felipe"

#1ST Form
[ "$VAR1" = "$VAR2" ] && echo "Equals (1ST form)"

#2nd form
if [[ "$VAR1" = "$VAR2" ]]; then
    echo "Equals (2nd form)"
fi

#3rd form
if [ $VAR1 = $VAR2 ]
then
    echo "Equals (3rd form)"
fi

#4th form
if test "$VAR1" = "$VAR2"
then
    echo "Equals (4th form)"
fi