#! /usr/bin/bash

### script input output 

arg=("$@")

echo ${arg[0]} ${arg[1]} ${arg[2]} # or $1 $2 $3

# $0 will print the script name
# $@ means all
echo $@
# $# will print length
echo $#