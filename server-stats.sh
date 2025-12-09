#!/bin/bash

echo "========== SERVER PERFORMANCE REPORT =========="
echo "=+=+=+==+=+=+= By Sankalp Kitey +=+=+=+==+=+=+="
echo

echo "--------- CPU usage ----------"
top -bn1 | grep "Cpu(s)"
echo 


echo "--------- Memory usage-------"
free -m
echo 

echo "------ Disk Usage ------"
df -h --total | grep total
echo

echo "------ Top 5 Processes by CPU ------"
ps -eo pid,comm,%cpu --sort=-%cpu | head -6
echo

echo "------ Top 5 Processes by Memory ------"
ps -eo pid,comm,%mem --sort=-%mem | head -6
echo
