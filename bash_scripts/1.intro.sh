#! /usr/bin/bash
# this comes from $which bash

# print in terminal
echo "Hello World!"

### redirect to file
echo "Hello World!!!" > file.txt

# take input from terminal
cat > file.txt
# to append
cat >> file.txt


### comments
# this is a single line comment

: '
this is 
a multi
line 
comment '

### Here doc Delimeter

cat << heredoc
this is a here
doc
delimeter .
heredoc

