<<comments
Name: Yashas B K
Date: 10/11/21
Description: WAS to print contents of a directory without ls command
Input: ./27_output_ls.sh
Output:
Assignments Classwork
comments

#!/bin/bash

arr=($@)	#Storing all command line arguments to an array
if [ $# -eq 0 ]
then
    echo *	#Displaying contents of present working directory if no CLA is passed
fi

for path in ${arr[@]}
do
    echo "$path:"
    cd $path	#Displaying contents of the CLA passed
    echo *
done


