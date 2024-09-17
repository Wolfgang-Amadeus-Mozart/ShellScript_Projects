#!/usr/bin/env bash

#shows Execution PID and script name if the passed value is greater than 0

[ $1 -gt 0 ] && echo "Script's name: $0 | Execution PID: $$"