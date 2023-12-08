#!/bin/bash

cd ~ || exit
pwd
# ls -la
greeting='Helloooo from shell script!'
echo "$greeting"
echo 'Another console print via bash.'

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
declare -a array=('This' 'is' 'an' 'array')

# Looping through array
for item in "${array[@]}"; do
  echo "$item"
done