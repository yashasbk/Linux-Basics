<<comments
Name:Yashas B K
Date:31/10/21
Description:WAS to display longest and shortest user-names on the system
Input:./18_largest_username.sh
Output:The Longest Name is: systemd-timesync
       The Shortest Name is:lp
comments

#!/bin/bash

arr=(`cut -d ":" -f1 /etc/passwd`)   #Creating array of all usernames
max=${arr[0]}     		
min=${arr[0]}
for i in `seq 0 $((${#arr[@]}-1))`	#Looping through total number of usernames
do
    if [ ${#arr[$i]} -gt ${#max} ]	#Condition to get max length username
    then
	max=${arr[$i]}
    elif [ ${#arr[$i]} -lt ${#min} ]	#Condition to get min length username
    then
	min=${arr[$i]}
    fi
done
echo "The Longest Name is:$max"
echo "The Shortest Name is:$min"
