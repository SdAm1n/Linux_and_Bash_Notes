#! /usr/bin/bash

# what we can do with awk
# 1. scan a file by line
# 2. split each input line into different fields
# 3. perform action on line

# awk transforms data files and also produce formatted reports

echo "Enter the filename to print from awk util: "
read fileName

if [[ -f $fileName ]]
then
    echo "File Exists"
    awk '{print}' $fileName
    # print line contain the string
    awk '/linux/{print}' $fileName
    # print a certain field in line --> $1,$3 here is the word number in the line
    awk '/linux/{print $1,$3}' $fileName
else
    echo "File doesn't exists"
fi