#! /usr/bin/bash

echo "Enter the filename to substitute using sed: "
read fileName

if [[ -f $fileName ]]
then
    echo "File Exists"
    # this will not change the original file
    cat $fileName | sed 's/linux/unix/g'   # g for global
    # use -i to change it in file

else
    echo "File doesn't exists"
fi