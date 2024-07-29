#! /usr/bin/bash

declare -r myvariable=/etc/passwd   # readonly

echo $myvariable

myvariable=/etc/newpath

echo $myvariable

# not readonly
declare newvar="something"
echo $newvar

newvar="new thing"
echo $newvar