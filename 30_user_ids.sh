<<comments
Name: Yashas B K
Date: 31/10/21
Description: WAS to count the number of users with user ID's between given range
Input: ./30_user_ids.sh 1 10
Output: Total count of user ID between 1 to 10 is: 10
comments
#!/bin/bash

if [ $# -eq 2 -o $# -eq 0 ]  #Checking whether 0 or 2 CLA's are passed
then
    if [ $# -eq 0 ]		#To set initial values if no arguments are passed
    then
	lower_limit=500
	upper_limit=10000
    else			#Setting arguments to CLA if CLA's are present
	lower_limit=$1
	upper_limit=$2
    fi
    if [ $1 -lt $2 ]		#Checking lower limit is lesser than upper limit
    then
    	arr=(`cut -d ":" -f3 /etc/passwd`)	#Saving user id's to an array
    	count=0					#Variable to count the id's
    	for i in `seq 0 $((${#arr[@]}-1))`	#Loop to run through all elements of array
    	do
	    if [ ${arr[$i]} -ge $lower_limit -a ${arr[$i]} -le $upper_limit ]	#Checking whether id is in limit
	    then
		count=$((count+1))
	    fi
	done
	echo "Total count of user ID between $lower_limit to $upper_limit is: $count"
    else
	echo "Error:Invalid range. Please enter the valid range through CL."
    fi
	
else
    echo "Error:Please pass 2 arguments through CL."
    echo "Usage:./30_user_ids.sh 100 200"
fi
