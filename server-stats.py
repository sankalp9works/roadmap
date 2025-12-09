#!/usr/bin/env python3

import os
import subprocess

def run(cmd):
    return subprocess.getoutput(cmd)


print("====== SERVER PERFORMACE REPORT ======\n")

#---------------- CPU USAGE--------------------#
print("------- CPU usage -------")
cpu = run("top -bn1 | grep 'Cpu(s)'")
print(cpu + "\n")

#--------------- MEMORY USAGE -----------------#
print("----- Memory Usage(MB) ------")
memory = run("free -m")
print(memory + "\n")

#-------------- DISK USAGE -------------------#
print("-------- Disk ussage --------")
disk = run("df -h --total | grep total")
print(disk + "/n")

#------------- TOP 5 CPU PROCESSES -----------#
print("-------- Top 5 CPU Process----")
top_cpu = run("ps -eo pid,comm,%cpu --sort=-%cpu | head -6")
print(top_cpu + "\n")

#------------ TOP 5 MEMORY PROCESSES --------#
print("--- Top 5 Processes by Memory ---")
top_mem = run("ps -eo pid,comm,%mem --sort=-%mem | head -6")
print(top_mem + "\n")

