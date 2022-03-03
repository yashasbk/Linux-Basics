<<comments
Name:Yashas B K
Date: 21/10/21
Description:Write a script to print a given number in reverse order
Input:./06_reverse.sh 1540
Output:Reversed number- 451
comments

#!/bin/bash

regex='^[0-9]+$'	
rev=0
last_digit=0
num=$1
if [ $# -eq 0 ]
then
	echo "Error:No argument passed"		#Error message		
elif [[ $1 =~ $regex ]]				#input validation
then
	if [ $1 -gt 9 ]				#checking multidigit
	then
		for i in `seq ${#1}`			#loop for reversal
		do 
			last_digit=`echo "$num%10"|bc`
			rev=$(((rev*10)+last_digit))
			num=`echo "$num/10"|bc`
		done
		echo "Reversed number - $rev"		#printing output
	else
		echo "Error:pass a multi-digit number"	#Error message
	fi
	
else
	echo "Error:Enter only numbers"		#Error message
fi
