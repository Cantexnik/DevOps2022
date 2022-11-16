#!/bin/bash
echo ====================================================
echo -e \\t \\t System information
echo ====================================================
echo -e \\n 


rp=$(ps r | wc -l)
MemFree=$(awk '/MemFree/ { printf "%.3f \n", $2/1024/1024 }' /proc/meminfo)
cpuLoad=$(top -bn1 | grep "Cpu(s)" | \
           sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
           awk '{print 100 - $1"%"}')


echo -e \\t \\t Running procces
ps r
 

echo "Count of running procces: $rp"

echo -e \\n 


echo -e \\t \\t  CPU info
echo CPU Load: $cpuLoad

echo -e \\n 

echo -e \\t \\t RAM info
echo Free RAM $MemFree Gb

echo

echo -e \\t \\t  Network
echo
 echo -e \\t    Connections

 if [ $# -eq 0 ]
then
	echo "Established connections (all ports) "
	ss -t4 state established | wc -l
else
	echo "Established connections on $1 port: "
	ss -t4 state established | grep :$1 | wc -l
fi