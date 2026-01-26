#!/bin/bash

Number=$1

echo "entered number is : $Number"

if [ ($Number %2) -eq 0 ]; then
    echo "Entered number $Number is even"
else
    echo "Entered number $Number is odd"
fi

