#! /usr/bin/bash

### Read from a file --> stdin

while read line
do
    echo $line
done < ${1:-/dev/stdin}

### write --> stdout, stderr

ls -al 1>file1.txt 2>file2.txt # 1 redirects output and 2 redirects error

ls -al > file1.txt 2>&1 # redirect stdout and stderr in a single file

# shortcut
ls -al >& file1.txt


### check if directory exists

# -f flag to for file and -d flag for directory
echo "Enter directory name: "
read direc

if [ -d $direc ]
then
    echo "Dir exists"
else
    echo "Dir doesn't exists"
fi