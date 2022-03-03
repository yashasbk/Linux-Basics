<<comments
Name: Yashas B K
Date: 10/11/21
Description: For each directory in the $PATH, display the number of executable files in that directory
Input:  ./31_executable_path.sh
Output:
Current dir: /usr/local/sbin
current count: 0
Current dir: /usr/local/bin
current count: 0
Current dir: /usr/sbin
current count: 205
Current dir: /usr/bin
current count: 1889
Current dir: /sbin
current count: 187
Current dir: /bin
current count: 159
Current dir: /usr/games
current count: 5
Current dir: /usr/local/games
current count: 0
Total – 2445
comments

#!/bin/bash
Total=0
path_arr=(`echo $PATH| tr ":" " "`)	#Array to store path
for directory in ${path_arr[@]}
do
    count=0
    files_array=(`ls $directory/*`)	#Array containing files in a directory
    for files in ${files_array[@]}
    do
	if [ -x $files ]	#Checking whether file is executable or not
	then
	    count=$((count+1))
	fi
    done
    echo "Current dir: $directory"
    echo "current count: $count"
    echo
    Total=$((Total+count))
    files_array=()
done
echo "Total - $Total"


