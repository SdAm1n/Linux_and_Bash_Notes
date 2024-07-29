#! /usr/bin/bash

# install inotify: $sudo apt install inotify-tools

mkdir -p temp/newFolder
inotifywait -m temp/newFolder