#!/bin/bash

User_id=$(id -u)

if [ $User_id -ne 0 ]; then
    echo "execute in super user"
    exit 1
fi 

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "installation failed"
else
    echo "installation succeeded"



