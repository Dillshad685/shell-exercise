#program to write whether even or odd?

#!/bin/bash

num=$1

echo "enter the number $num"

if [ $(($num %2)) -eq 0 ]; then
    echo "entered number $num is even"
else
    echo "entered number $num is odd"
fi

