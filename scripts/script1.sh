#!/bin/bash

name=Diogo
surname=Santana

echo 'Will now call on final script, script.sh'
# Let's verify their current value
echo $0 :: Name : $name, Surname : $surname
export surname
export name

# Call on script.sh
./script.sh

# Let's see what they are now
echo $0 :: Name : $name, Surname : $surname