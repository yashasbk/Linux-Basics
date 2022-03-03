<<comments
Name: Yashas B K
Date: 18/10/2021
Description: Read 'n' and generate a pattern given below(number increasing from Top to bottom)
Input: Enter the number: 4
Output: 
1
23
456
78910
comments

#!/bin/bash

read -p "Enter the number: " num  #Taking input from user
number_increment=1
row_num=0
column_num=0
if [ $num -gt 2 -a $num -lt `echo 2^5|bc` ]	#Input validation
then
	for row_num in `seq $num`		#loop for row		
	do
		for column_num in `seq $row_num`   	#loop for column
		do
			echo -n $number_increment  		    #printing number_increment
			number_increment=$((number_increment+1))
		done
		echo 			#next line
	done
else
	echo "Number out of range, Please enter 2 < number < 2^5"
fi
