#!/bin/bash

LOGS_FOLDER="/var/log/shell-exercise"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER

echo "folder name is $LOGS_FOLDER"

