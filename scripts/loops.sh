#!/bin/bash
# Loop 1
fruit="Banana Strawberry Mango"
for f in fruit

do
    echo "A $f is nice to eat!"
done

# Loop 2
name_list="Diogo Alexandre Santana"
for name in $name_list
do
    echo "The next name is $name"
    ./hello4.sh $name
done    