#!/bin/bash
echo
echo "          NETWORK MONITORING"
echo
echo "IP ADDRESS"
echo "---------"
hostname -I
echo
echo "NETWORK INTERFACES"
echo "----------"
ip -br addr
echo
echo "GATEWAY"
echo "----------"
ip route | grep default
echo 
echo "DNS"
echo "---"
cat /etc/resolv.conf
echo
echo "INTERNET CONNECTION"
echo "-------------------"
if ping -c 1 8.8.8.8 > /dev/null 2>&1
then 
    echo "Internet: Connected"
else
    echo "Internet: Not Connected"
fi 
echo
echo "NETWORK CONNECTIONS"
echo "-------------------"
ss -tuln

