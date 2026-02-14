#!/bin/bash

# number should be greater than 1
# number should not be dvisible by other numbers except for 1 and itself

num=$1

echo "entered num:$num"

if [ $num -le 1 ]; then
    echo "it is not prime"
    exit 1
fi

count=0
for ((i=1; i<$num; i++))
do
    if [ $( num % i ) -eq 0 ]; then
    count=$(count +1)
done

if [ $count -eq 2 ]; then
    echo "entered number is prime"
fi


=============================================================================

SOURCE_DIR="/home/ec2-user/app-log"
if [ ! d $SOURCE_DIR ]; then
    echo "source dir doesnot exist"
fi

FILES_TO_DELETE=$( find $SOURCE_DIR -name "*.log" -type f -mtime +14)
while IFS=read -r filepath
do 
    echo "deleted file $filepath"
    rm -rf $filepath
done <<< $FILES_TO_DELETE


===================================================================================

FILES=$( find $SOURCE_DIR -name ".*log" -type f -mtime +14 )

if [ ! -z "${FILES}" ]; then
    echo "files are found:$FILES"
    TIMESTAMP=$(date +%F-%H-%M)
    ZIP_FILE_NAME="$DEST_DIR/app-log-$TIMESTAMP.zip
    echo "zip  file name= $ZIP_FILE_NAME"
    find $SOURCE_DIR -name "*.log" -type f -mtime +14 | zip -@ -j "$ZIP_FILE_NAME"

    if [ -f $ZIP_FILE_NAME ]; then
        echo "zipped the files"
        while IFS=read -r filepath
        for
        do
            echo "deleting file $filepath"
            rm -rf $filepath
        one<<< $FILES
    fi
fi


==============================================================================================

#!/bin/bash

num=$1
echo "entered number:$num"

if [ $num -le 1 ]; then
    echo "it is not a prime"
fi

count=0
for ( i=0; i<=$num; i++ )
do
    if [ $( num %i ) -eq 0 ]; then
        count=$(count +1)
    fi
done 

if [ $count -eq 2 ]; then
    echo "$num is prime"
else
    echo "$num is not prime"
fi

================================================================================================

#!/bin/bash

SOURCE_DIR="/home/ec2-user/app-log"
if [ ! d $SOURCE_DIR ]; then
    echo "$SOURCE_DIR doesnot exist"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log" -type f -mtime +14 )
while IFS=read -r filepath
do
    echo "files to delete $filepath"
    rm -rf $filepath
done <<< $FILES_TO_DELETE

==================================================================================================
# zip and delete
# source dir, dest dir, time of file
# zip and delete

#!/bin/bash

FILES=$(find $SOURCE_DIR name "*.log" -type f -time +14 )
if [ ! -z $FILES ]; then
    echo "files found"
    TIMESTAMP=$(date +%F-%H-%M)
    ZIP_FILE_NAME="$DEST_DIR/app-log.$TIMESTAMP.zip"
    echo "ZIp file name: $ZIP_FILE_NAME"
    find $SOURCE_DIR name "*.log" -type f -mtime +14 | zip -@ -j "$ZIP_FILE_NAME"

    if [ -f $ZIP_FILE_NAME ]; then
        echo "archival success"
        while IFS=read -r filepath
        do
            echo "deleting ile $FILES"
            rm -rf $FILES
        done <<< $FILES
    fi
fi
===================================================================================================