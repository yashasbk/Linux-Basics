<<comments
Name: Yashas B K
Date: 10/11/21
Description: WAS to determine whether a given file system or mount point is mounted
Input: ./26_mounted_fs.sh /dev
Output: /dev is not mounted.
comments

#!/bin/bash

filesystem=(`df |tr -s " " |cut -d " " -f1`)	#Filesystem
mount_point=(`df | tr -s " " |cut -d " " -f6`)	#Mount point
used_space=(`df |tr -s " "|cut -d " " -f5`)	#Space used
available_space=(`df | tr -s " "|cut -d " " -f4`)	#Free space
var=0
if [ $# -ne 0 ]		#To check command line argument is passed or not
then
    for i in `seq 1 $((${#filesystem[@]}-1))`	#Loop through all filesystems
    do
	if [ ${filesystem[$i]} = $1 ]		#Verifying whether input filesystem is mounted or not
	then
	    echo "File-system $1 is mounted on ${mount_point[$i]} and it is having ${used_space[$i]} used space with ${available_space[$i]}  KB free."
	    var=1
	fi
    done
    if [ $var = 0 ]
    then
	echo "$1 is not mounted."
    fi
else
    echo "Error: Please pass the name ofo the file-system through command line."
fi

