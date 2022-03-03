<<comments
Name: Yashas B K
Date: 26/10/21
Description: Script to delete empty lines from a file
Input: ./07_delete_empty_lines.sh file.txt
Output: Empty lines are deleted
comments

#!/bin/bash

if [ $# -eq 0 ]           #Checking input is passed using command line
then
    echo "Error: Please pass the file name through command line."
else
	if [ -s $1 ]      #To check whether file is empty or not 
	then
    	sed -i '/[[:space:]]/d' $1   #Deletes empty spaces and tabs 
    	sed -i '/^$/d' $1            #Deletes empty lines
    	echo "Empty lines are deleted."
	else
    	echo "Error : $1 is empty, So cannot delete the empty lines." #Error message
	fi
fi

