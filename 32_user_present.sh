<<comments
Name: Yashas B K
Date: 01/11/2021
Description: WAS to search whether the user is present or not in your system
Input:./32_user_present.sh root
Output:root is present
comments

#!/bin/bash

present=0		#variable to store present or not
if [ $# -ne 0 ]
then
    arr=(`cut -d ":" -f1 /etc/passwd`)	#saving username to array
    for i in `seq 0 $((${#arr[@]}-1))`	#loop through array
    do
	if [ ${arr[$i]} = $1 ]		#To check user is present or not	
	then
	    present=1
	fi
    done
    if [ $present -eq 1 ]
    then
	echo "$1 is present"
    else
	echo "$1 not present"
    fi
else
    echo "Error: Please pass the argument through command line."
fi

