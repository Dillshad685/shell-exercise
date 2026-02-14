#!/bin/bash

LOGS_FOLDER="/var/log/shell-exercise"
SCRIPT_PATH=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_PATH.log"
mkdir -p $LOGS_FOLDER

SOURCE_DIR="/home/ec2-user/app-log"

if [ ! d $SOURCE_DIR ]; then
    echo "source dir doesnot exist"
fi

FILES_TO_DELETE=$( find $SOURCE_DIR -name "*.log" -type f -mtime +14 )

while IFS=read -r filepath
do
    echo "deleting file :$filepath"
    rm -rf $filepath
done <<<$FILES_T0_DELETE
