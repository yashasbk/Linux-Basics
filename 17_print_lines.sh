<<comments
Name:Yashas B K
Date:30/10/21
Description:WAS to print contents of file from given line number to next given number of lines.
Input:./17_print_lines.sh 5 3 myfile.txt
Output: line number 5
	line number 6
	line number 7
comments

#!/bin/bash

if [ $# -eq 3 ]    				#Checking whether 3 CLA's or passed 
then
    arr=(`wc -l $3`)
    lines=${arr[0]}				#Calculating line numbers
    if [ $(($1+$2-1)) -gt $lines ]		#Checking whether file has required number of lines as per input
    then
    	echo "Error:$3 is having only $lines lines, file should have at least $(($1+$2-1)) lines." 
    else
      	head -$(($1+$2-1)) $3|tail -$2		#printing the lines 
    fi
else
    echo "Error:arguments missing!"		#Error message
    echo "Usage: ./file_filter.sh start_line uptoline filename"
    echo "For eg. ./20_file_filter.sh 5 5 <file>filename"
fi

