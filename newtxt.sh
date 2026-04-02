#!/bin/bash

num=$1

echo "entered number: $num"

if [ $(($num % 2)) -eq 0 ]; then
    echo "Entered number $num is even"
else
    echo "$num is odd"
fi

