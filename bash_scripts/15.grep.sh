#! /usr/bin/bash

echo "Enter the filename to search text: "
read fileName

if [[ -f $fileName ]]
then
    echo "File Exists"
    echo "Enter text to search: "
    read grepVar
    # -i to remove case sensitivity
    # -n to print line numbers of the match strings
    # -c count number of times matched string appears
    # -v prints the lines that doesn't contain the matched string
    grep -i -n $grepVar $fileName
    grep -c $grepVar $fileName
    grep -v $grepVar $fileName
else
    echo "File doesn't exists"
fi