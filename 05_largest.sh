<<comments
Name: Yashas B K
Date : 21/10/21
Description: Script to find the larger number of 'n' number of arguments
Input: ./05_largest.sh 5 6 8 4.3 2 1
Output: Largest value is 8
comments

#!/bin/bash

largest=0
regex='^[- 0-9 \.]+$'  			#regex for validation
if [ $# -gt 0 ]				#check for zero arguments
then
	for arg in $@			#loop to check real numbers
	do
		if [[ $arg =~ $regex ]]
		then
			validation=1
		else
			validation=0
		fi
	done

	if [ $validation -eq 1 ]
	then
		for arg in $@			#loop to find largest number
		do
			if [ `echo "scale=3;$arg>$largest"|bc` -eq 1 ]
			then
				largest=$arg
			fi
		done

	echo "Largest value is $largest"	#Printing largest number
	else
		echo "Enter real numbers"	#Error message
	fi			
else
	echo "No arguments passed"		#Error message
fi
