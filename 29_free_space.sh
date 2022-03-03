<<comments
Name: Yashas B K
Date: 10/11/21
Description: Display the names of any file-system which have less than 10% free space available
Input:./29_free_space.sh
Output: Filesystem /dev/sda5 have less than 10% free space
comments

#!/bin/bash

filesystem=(`df -h|tr -s " "|cut -d " " -f1`)	#Array containing filesystem names
use=(`df -h|tr -s " "|cut -d " " -f5|tr -d %`) #Array containing percentage of memory used
for i in `seq 1 $((${#use[@]}-1))`
do
    if [ ${use[$i]} -gt 50 ]			#Checking if memory usage is greater than 90%
    then
	echo "Filesystem ${filesystem[$i]} have less than 10% free space"
    fi
done
