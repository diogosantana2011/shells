#!/bin/bash

# Variables called from different script.

# Let's verify their current value
echo $0 :: Name : $name, Surname : $surname

# Let's change their values
name=RandomName
surname=RandomSurname

# Let's see what they are now
echo $0 :: Name : $name, Surname : $surname