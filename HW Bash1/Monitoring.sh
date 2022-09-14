#!/bin/bash
echo ====================================================
echo -e \\t \\t System information
echo ====================================================
echo -e \\n 



MemFree=$(awk '/MemFree/ { printf "%.3f \n", $2/1024/1024 }' /proc/meminfo)
#CPU=$(awk '/vendor_id/ { printf "%.3f \n", $2 }' /proc/cpuinfo)
#echo CPU $CPU
echo Running procces
ps r

 
rp=$(ps r | wc -l)
echo "Count of running procces: $rp"

echo -e \\n 


echo CPU info
echo CPU Load:

top -bn1 | grep "Cpu(s)" | \
           sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
           awk '{print 100 - $1"%"}'

echo -e \\n 


echo Free RAM $MemFree Gb
 #awk '/MemFree/ { printf "%.3f \n", $2/1024/1024 }' /proc/meminfo