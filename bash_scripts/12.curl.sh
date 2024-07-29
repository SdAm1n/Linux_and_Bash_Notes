#! /usr/bin/bash

url="https://proof.ovh.net/files/1Mb.dat"
curl ${url} -o newfiledwn.dat # or curl $url > newfiledwn.dat

# to get info of the file
curl -I $url