<<comments
Name: Yashas B K
Date: 01/11/2021
Description: WAS to delete all the .swp files found in your system or directory
Input: ./19_delete_display_swp.sh
Output: 
/home/yash/Linux_systems/Assignments/01_.sh.swp
/home/yash/Linux_systems/Assignments/02_.sh.swp
comments

#!/bin/bash

if [ $# -ne 0 ]    					 #Checking CLA
then
    if [ -d $1 ]					#Checking entered CLA is dir or not
    then
	if [ -e *.swp ]					#Checking .swp exits or not
	then
	    find $1 -type f -name "*.swp" -delete       #Finding and deleting .swp from entered dir
	else
	    echo "No swp files found in $1."
	fi
    else
	echo "Error: $1 no such a file or directory"
    fi
fi
find ~ -type f -name "*.swp"				#Display all .swp from home directory recursively
