#! /usr/bin/bash

echo "Enter string 1: "
read str1

echo "Enter string 2: "
read str2

# compare string

if [ "$str1" == "$str2" ]   # "" quotation must be used, else it will not recognize spaces
then
    echo "Strings are equal"
elif [ "$str1" \> "$str2" ]
then
    echo "String 1 is bigger"
else
    echo "String 2 is bigger"
fi

# concatination

str3="$str1 $str2" # or str3=$str1$str2 for without space

echo "concatenated strings: $str3"

# lowercase

echo ${str3,}   # first letter will be lowercase
echo ${str3,,}  # whole string lowercase
echo ${str3,,[AEIOU]}   # AEIOU will be in lowercase

# uppercase

echo ${str3^}   # first letter uppercase
echo ${str3^^}  # whole string uppercase