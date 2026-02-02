#!/bin/bash

num=$1

echo "entered number:$num"

if [ $num -lt 1 ]; then
    echo "it is not a prime number"
fi

count=0
for (( i=1; i<=$num; i++ ))
do 
    if [ $(($num % i )) -eq 0 ];
        count=$((count +1))
    fi
done

if [ $count -gt 2 ]; then
    echo "$num is not a prime number"
else
    echo "$num is a prime number"
fi
