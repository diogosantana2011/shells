#!/bin/bash

# ls -lh
greeting='Helloooo from shell script!'
echo "$greeting"
echo 'Another echo via bash.'

# WHO ARE YOU
echo 'who are you? '
# who="Diogo Santana"
read -r who
echo "Hello, $who!"

# AGE
echo 'How old are you?'
read -r age

if [ "$age" -gt 20 ]; then
  echo 'You are overage.'
else
  echo 'You are underage.'
fi

# Loop
files="/Users/diogosantana/Development/shells/*"

for file in $files; do
  echo $(basename "$file")
done

# Array
declare -a array=('Now' 'Well\' 'call' 'another' 'script')

# Looping through array
for item in "${array[@]}"; do
  echo "$item"
done

echo 'Will now call on other version.sh, and script1.sh'
echo

# Call on script.sh
chmod 755 versions.sh
./versions.sh
./script1.sh