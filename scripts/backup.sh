#!/bin/bash
#Added 'life.tar.gz' file which must be extracted to downloads 
#Create a script backup.sh which contains a command 
#to create a compressed archive of the downloads subdirectory.

#I placed work in downloads so 
#so we navigate there first
#and write out zip to downloads
srcdir="work"
FILE_NAME="work-$(date -I)-archive.tgz"

echo Script is starting!
cd ~/Downloads
echo
chmod +x backup.sh
tar --create --verbose --gzip --file=$FILE_NAME $srcdir
echo
echo Script finished!