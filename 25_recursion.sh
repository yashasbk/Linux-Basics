<<comments
Name: Yashas B K
Date: 10/11/21
Description: Recursive function to print each argument passed to the function
Input: ./25_recursion.sh hello how are you
Output: 
hello 
how 
are 
you
comments

#!/bin/bash

arr=($@)		#Creating an array of CLA's
i=0
function recur()	#Function declaration
{
    if [ $# -eq 0 ]	#Terminating statement
    then 
	return
    fi
    echo $1		
    i=$((i+1))
    recur ${arr[i]}	#Recursive call
}

if [ $# -ne 0 ]
then
    recur $@		#Function call

else
    echo "Error: Pass the arguments through command line."
fi
