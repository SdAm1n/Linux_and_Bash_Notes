#! /usr/bin/bash

### Conditions

# there should be no space between variable and values
count=9

if [ $count -eq 10 ]
then
    echo "equal"
elif (( $count > 10 )) # if you use > < or = signs, use (()) instead of [ ]
then
    echo "greater"
else
    echo "less"
fi

### Logical and Relational Operators
# -eq, -ne, -gt, -lt...
# AND can be written as -a or &&.
# if you use -a, you can bracket only once

age=10
if [ $age -gt 15 ] && [ $age -lt 20 ]
then
    echo "age is correct"
else
    echo "age is incorrect"
fi

if [[ $age -gt 5 && $age -lt 15 ]]
then
    echo "age is correct"
else
    echo "age is incorrect"
fi

# OR can be written as -o or ||

if [ $age -gt 5 -o $age -lt 2 ]
then
    echo "age is correct"
else
    echo "age is incorrect"
fi

### Case Statement

Flavor=$1 # $1 represents first arg passed to the script

case $Flavor in
    "Vanilla")
        echo "It's Vanilla Ice-Creame";;
    "Chocolate")
        echo "It's Chocolate Ice-Creame";;
    *)
        echo "Unknown Flavor";;
esac
