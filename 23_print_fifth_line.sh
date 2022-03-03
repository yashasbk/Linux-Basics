<<comments
Name: Yashas B K
Date: 01/11/2021
Description: WAS to print the 5th line of a file passed through command line
Input: ./23_print_fifth_line.sh file.txt
Output: Fifth line of file.txt is line 5
comments

#!/bin/bash

if [ $# -ne 0 ] 			#Checking CLA is passed or not
then
    if [ -e $1 ]			#Checking existence of file
    then
	arr=(`cat $1|wc -l`)		
	total_lines=${arr[0]}		#Finding total lines in a file
	if [ $total_lines -lt 5 ]
	then
	    echo "Error: $1 having only $total_lines lines. So can't print 5th line."
	else
	    echo "Fifth line of $1 is `head -5 $1|tail -1`"		#Printing 5th line
	fi
    else
	echo "Error: No such a file."
    fi
else
    echo "Error: Please pass the file name in command line."
fi
