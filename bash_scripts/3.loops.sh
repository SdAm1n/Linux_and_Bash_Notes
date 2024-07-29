#! /usr/bin/bash

### while loop

echo "while Loop: "
n=1
while [ $n -le 10 ]
do
    echo $n
    n=$(( n + 1 ))
done

### until loop

echo "until Loop: "
num=1
until [ $num -gt 6 ]
do
    echo $num
    num=$(( num+1 ))
done

### for loop

echo "for Loop: "

for i in 1 2 3 4 5
do
    echo $i
done

for i in {1..20..2}
do
    echo $i
done

for (( i=0; i<5; i++ ))
do
    echo $i
done

### break and continue works like any other language