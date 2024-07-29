#! /usr/bin/bash

function scope() 
{
    val="inside of function"
}

val="outside of function"
echo $val               # this will print outside of function

scope
echo $val               # but this will print inside of function