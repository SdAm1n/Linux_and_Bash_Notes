#! /usr/bin/bash

# find hosts with mysql installed

echo "Enter starting IP Addr: "
read startIP

echo "Enter last octet of last IP Addr: "
read lastIpOctet

echo "Enter port to scan: "
read port

nmap -sT $startIP-$lastIpOctet -p $port > /dev/null -oG MySQLscan

cat MySQLscan | grep open > MySQLscan2

cat MySQLscan2