<<comments
Name: Yashas B K
Date: 26/10/21
Description: Script to print the length of each and every string using arrays
Input: hello hi
Output:Length of string(hello) - 5
       Length of string(hi) - 2
comments

#!/bin/bash

if [ $# -eq 0 ]   #To check input is passed through command line
then
    echo "Error: Please pass the arguments through command-line."
else
    arr=($@)
    for i in `seq 0 $(($#-1))`
    do 
	echo "Length of string (${arr[$i]}) - ${#arr[$i]}"
    done
fi
