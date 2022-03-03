<<comments
Name: Yashas B K
Date : 21/10/21
Description: BMI calculation
Input: Enter the weight in Kg : 45.5
       Enter the height in meters: 1.5
Output: 
You are Normal.
comments

#!/bin/bash

read -p "Enter the weight in Kg: " weight 
read -p "Enter the height in meters: " height

filter='^[0-9 \.]+$'
if [[ $weight =~ $filter && $height =~ $filter ]]		#input validation for positive numbers
then

	BMI=`echo "scale=3;$weight/($height*$height)"|bc`	#BMI calculation using bc and piping

	if [ `echo "$BMI <= 18.5"|bc` -eq 1 ]			#Underweight logic
	then 
		echo "You are Underweight."

	elif [ `echo "$BMI > 18.5"|bc` -eq 1 -a `echo "$BMI <= 24.9"|bc` -eq 1 ]	#Normal logic
	then
		echo  "You are Normal."

	elif [ `echo "$BMI >= 25"|bc` -eq 1 -a `echo "$BMI <= 29.9"|bc` -eq 1 ]		#Overweight logic
	then 
		echo "You are Overweight."

	else										#Obese
		echo "Obese, Go to gym."
	fi
else
	echo "Error : Invalid input"			
	echo "Please enter only positive values"						#Error message
fi
