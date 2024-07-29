#! /usr/bin/bash

select food in ice-cream burger chips fish juice
do
    case $food in
    ice-cream)
        echo "$food selected";;
    burger)
        echo "$food selected";;
    chips)
        echo "$food selected";;
    fish)
        echo "$food selected";;
    juice)
        echo "$food selected";;
    *)
        echo "Error! Select between 1..5";;
    esac
done