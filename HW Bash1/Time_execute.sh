#!/bin/bash
START_TIME=$(date +%s)
# do something
#find / -name test -type f
find /mnt/d/ -name test -type d
# in this block
END_TIME=$(date +%s)
DIFF=$(( $END_TIME - $START_TIME ))
echo "It took $DIFF seconds"