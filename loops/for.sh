#!/usr/bin/env bash

#1St form
for (( i = 0; i < 10; i++)); do
    echo $i
done

echo "2nd form"

#2nd form
for i in $(seq 10);
    do
        echo $i
done