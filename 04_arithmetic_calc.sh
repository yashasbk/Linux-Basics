<<comments
Name: Yashas B K
Date: 20/10/2021
Description: Arithmetic calculator using command line arguments
Input: ./04_arithmetic_calc.sh 25 + 41.2
Output:25 + 41.2 = 66.2 
comments

#!/bin/bash

filter='^[- 0-9 /.]+$'     #regex to check inputs are real numbers
if [ $# -le 0 ]		#Check whether user is entering arguments
then
	echo "Please pass the arguments through command line"
elif [ $# -eq 3 ]	#Check whether 3 CLA's are passed
then
	if [[ $1 =~ $filter && $3 =~ $filter ]]     #real numbers check
	then
		case $2 in				#case to do different operations
			"+")
				echo -n "$1 + $3 = "	
				echo "$1+$3"|bc		#arithmetic operation using piping and bc
				;;
			"-")
				echo -n "$1 - $3 = "
				echo "$1-$3"|bc
				;;
			"x")
				echo -n "$1 x $3 = " 
				echo "$1*$3"|bc
				;;
			"/")	
				echo -n "$1 / $3 = "
				echo "scale=3;$1/$3"|bc
				;;
			"%") 
				echo -n "$1 % $3 = "
				echo "$1%$3"|bc
				;;
			*)
				echo "Please enter real numbers"          #Error message
				;;
		esac
	else
		echo "Enter numbers properly"     #Error message
	fi
else
	echo "Please pass 3 arguments"           #Error message
fi		
