#!/bin/bash

# || is equivalent to OR

#In this example, if this fail to ping google.com, than the message "unreachable will be prompet"
#Otherwise it will just ping google
HOST="google.com"
ping -c 1 $HOST || echo "$HOST is unreachable"
