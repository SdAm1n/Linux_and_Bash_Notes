#! /usr/bin/bash

# declare array
arr=('first' 'seco nd' 'third' 'fourth')

# print all element of array
echo "${arr[@]}"

# print index numbers
echo ${!arr[@]}

# print length of array
echo ${#arr[@]}

# delete an element
unset arr[2]

echo ${arr[@]}
echo ${!arr[@]}

# add an element
arr[2]='new third'
echo ${arr[@]}
echo ${!arr[@]}


# using loop
for i in ${!arr[@]}
do
    echo ${arr[i]}
done