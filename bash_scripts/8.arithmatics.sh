#! /usr/bin/bash

echo "Enter first Num: "
read a

echo "Enter second Num: "
read b

echo $((a+b))
echo $((a-b))
echo $((a*b))
echo $((a/b))
echo $((a%b))

# using expr
echo $(expr $a + $b)
echo $(expr $a \* $b)   # expr doesn't recognize * sign

### hex to decimal

hex=FFFF
echo -n "The decimal value of hex is: "
echo "obase=10; ibase=16; $hex" | bc    # need to install bc

echo $((16#${hex}))     # another method
printf "%d\n" 0x${hex}  # another method

### decimal to hex

deci=20
echo "obase=16; ibase=10; $deci" | bc
printf '%x\n' $deci
