#!/bin/bash

echo
echo "        PROCESS MONITORING"
echo

echo "TOP PROCESSES BY CPU"
echo "-------------"
ps aux --sort=-%cpu | head -6

echo
echo "TOP PROCESSES BY RAM"
echo "--------------"
ps aux --sort=-%mem | head -6
