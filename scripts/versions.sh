#!/bin/bash

echo "Checking npm and node versions on:"
echo " - Host: $HOSTNAME"
echo " - User: $USER"

packageVersionNPM=$(command npm -v)
packageVersionNode=$(command node -v)

echo "NPM version is: $packageVersionNPM"
echo "Node version is: $packageVersionNode"
echo 

echo 'Some random commands'
echo
echo "Random number: $RANDOM"

listDirs=$( ls /etc | wc -l )
listDirChars=$( ls /etc | wc -mlw )

ls -lh
echo There are $listDirs in directory /etc
echo $listDirChars