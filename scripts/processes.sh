#!/bin/bash
day=$(date '+%d-%m-%Y')
DIRECTORY=PS_LOGS
OUT_FILE=$day-output.txt
echo This script obtains ongoing processes via ps/top/hop and writes them to file.
echo "File will be named date + output.txt. I.E; $OUT_FILE"
echo "Now I will add $USER's processes to file."

#####################################
# TODO:
# CHECK $OUTFILE
# AND create copy with increment
#####################################
# IDEA: Mix it with back ups to create
# a back of PS_LOGs with below increment
#####################################
# INCREMENT: 
# fileNameIncrease=0
# ((fileNameIncrease++))
# FILE_COPY_NAME=copy-$fileNameIncrease-$OUT_FILE
# ps -x -u $USER > $DIRECTORY/$FILE_COPY_NAME
#####################################

# STARTING WITH TOP
{
    # WARN USER OF CWD
    CWD_WARNING="!!!WARNING!!! CURRENT WORKING DIRECTORY: $(pwd)"
    echo $CWD_WARNING
    if [[ -d "$DIRECTORY" ]]; then
        echo "$DIRECTORY exists. Checking file!"
        if [ -f $DIRECTORY/$OUT_FILE ]; then
            echo "$OUT_FILE exists. No override required."
        elif [ ! -f $OUT_FILE ]; then
            echo "No file exists. Creating $OUT_FILE!"
            ps -x -u $USER > $DIRECTORY/$OUT_FILE
        fi
    else
        echo "$DIRECTORY doesn't exist. Creating and adding file!"
        mkdir $DIRECTORY
        ps -x -u $USER > $DIRECTORY/$OUT_FILE
    fi
} || {
    echo "Error occurred while checking $DIRECTORY" 
}