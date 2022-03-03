<<comments
Name: Yashas B K
Date: 18/10/2021
Description: Write a script for addition of two numbers for real numbers also
Input: Enter the numbers to addition 10.4 20
Output: Answer is 30.4
comments


#!/bin/bash

read -p "Enter the numbers to addition " num1 num2		  #Taking input from user
filter='^[- 0-9 \.]+$'							#regex

if [[ $num1 =~ $filter && $num2 =~ $filter ]]
then						#input validation for input 1 and 2
	echo -n "Answer is "
	echo "scale=3;$num1+$num2"|bc
else
	echo Please enter only integers or real numbers 
fi
