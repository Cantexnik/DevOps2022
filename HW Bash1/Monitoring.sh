#!/bin/bash
echo ====================================================
echo -e \\t \\t System information
echo ====================================================
echo -e \\n 

echo Running procces
ps r

#a=`ls -l` 
rp = `ps r \| wc -l`
#echo "Count of running procces: $rp"

echo $a
echo -e \\n 


echo CPU info
#cat /proc/cpuinfo | grep "model_name"
echo CPU Load:

top -bn1 | grep "Cpu(s)" | \
           sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
           awk '{print 100 - $1"%"}'

echo -e \\n 