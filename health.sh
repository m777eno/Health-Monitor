#!/bin/bash

#Author Enoch Masih
#Class Linux Administration
#Health Monitoring 

#Assigns Today's date and creates a report in txt extention. 
t_var=$(date +'%m-%d-%Y') # This will get the date from the system
report="/home/"$t_var"-Health.txt"
touch $report

#Health Monitoring script monitoring network traffic and current proceeses.
{
echo 
echo Enoch Masih
echo =====================
echo HEALTH MONITOR REPORT
echo ======================
echo 
echo ============
echo DISK DETAILS
echo ============
echo Disk Usage
df -h # The -h option makes the output human-readable
echo ==============
echo MEMORY DETAILS
echo ==============
echo "(In Megabytes)"
free -m # The -m option makes the output in megabytes
echo ===============
echo NETWORK DETAILS
echo ===============
echo uptime
uptime -p # This command pulls up the up time and -p option makes it look pretty
[tcpdump -q -c 5] # The -q option is for quick and -c is the count 
echo =========
echo PROCESSES
echo =========
pstree -l -h # The -h is for highlighting current procces and origins
} > $report


