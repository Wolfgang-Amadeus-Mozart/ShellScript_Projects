#!/bin/bash

#debugging a particular section of code with the breakpoint set -x and marking where to stop with set +x
DEBUG=true #manually defining where debug mode is ON


if $DEBUG
	then
		echo "Debug mode is on"
fi

set -x
for i in $(seq 10)
  do
    echo $i
done
set +x

#This will print every steps from this loop
