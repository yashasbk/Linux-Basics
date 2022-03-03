<<comments
Name: Yashas B K
Date: 17/10/21
Description: Read 'n' and generate a pattern given below
Input: 4
Output: 
1
12
123
1234
comments

#!/bin/bash

row_num=0
column_num=0
read -p "Enter the number you want: " num #Taking input from a user

if [ $num -gt 2 -a $num -lt `echo 2^5|bc` ] #Input validation
then
	for row_num in `seq $num`		#loop for row
	do
		for column_num in `seq $row_num`	#loop for column
		do
			echo -n $column_num	#printing pattern
		done
		echo
	done
else
	echo "Number out of range, Please enter 2 < number < 2^5"
fi
