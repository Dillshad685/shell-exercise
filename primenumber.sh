#!/bin/bash

num=$1

echo "entered number:$num"

if [ $num -le 1 ]; then
    echo "it is not a prime number"
    exit 1
fi

count=0
for (( i=1; i<=$num; i++ ))
do 
    if [ $(($num % i )) -eq 0 ]; then
        count=$((count +1))
    fi
done

if [ $count -eq 2 ]; then
    echo "$num is  a prime number"
else
    echo "$num is not a prime number"
fi
