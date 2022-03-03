<<comments
Name: Yashas B K
Date: 26/10/21
Description: Script to read n and generate Fibonacci numbers
Input: 10
Output: 0,1,1,2,3,5,8
comments

#!/bin/bash

read -p "Enter limit for fib series: " num
numbers='^[- 0-9]+$'
positive='^[0-9]+$'
if [[ $num =~ $numbers ]]
then
	if [[ $num =~ $positive ]]
	then
	    	s=0
       		i=0
       		j=1
    		while [ $s -le $num ]
    		do
		    fibonacci=$s
		    echo -n "$fibonacci"
		    i=$j
		    j=$fibonacci
		    s=$((i+j))
		    if [ $s -le $num ]
		    then
			echo -n ","
		    fi
		done
		echo
	    else
		echo "Error:Please enter only positive numbers."
	fi
    else
	echo "Error:Please enter only numbers."
fi
