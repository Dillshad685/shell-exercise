#!/bin/bash

num=$1

echo "enter number: $num"

if [ ($num % 2) -eq 0 ]; 
    echo "Entered number $num is even"
else
    echo "$num is odd"
fi

