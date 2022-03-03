<<comments
Name: Yashas B K
Date: 10/11/21
Description: Write a script to replace 20% lines in a C file randomly and replace it with the pattern.
Input:./33_replace_DEL_.sh 
Output:Error: Please pass the file name through command line.
comments

#!/bin/bash
if [ $# -ne 0 ]             #Checking whether Command line argument is passed or not
then
    if [ -e $1 ]	    #Checking for existence of the file
    then
	if [ -s $1 ]	    #Checking whether file is empty or not
	then
	    arr=(`wc -l $1`)		#Saving number of lines to array
	    Total_lines=${arr[0]}
	    per20=$((20*Total_lines/100)) 
	    lines_to_replace=(`shuf -i 1-$Total_lines|head -$per20`)	#Generating and saving random numbers to an array
	    echo "Before replacing"
	    cat $1
	    for line in ${lines_to_replace[@]}
	    do
		sed -i "$line s/.*.*/<.......deleted......>/" $1    #Replacing the lines using sed command
	    done
	    echo "After replacing"
	    cat $1

	else
	    echo "Error: $1 is empty file. So can't replace the string."
	fi
    else
	echo "Error: No such a file."
    fi
else
    echo "Error: Please pass the file name through command line."
fi
