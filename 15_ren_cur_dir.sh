<<comments
Name: Yashas B K
Date: 30/10/21
Description: Script to rename current working directory with given name
Input: ./rename_cur_dir.sh Assign2
Output: Current working directory will be renamed to Assign2
comments

#!/bin/bash

arr=(`pwd | tr / " "`)        #converting path to array
pre_dir_name=${arr[-1]}		#saving present directory name
if [ $# -le 0 ]			#Check for CLA
then
	echo "Error: Please pass the new directory name"
else

	if [ $1 = ${arr[-1]} ]		#Check for same dir name
	then
	    echo "Error: Current directory name and $pre_dir_name both are same, Please pass new name"
	else
		cd ..
		chmod 777 $pre_dir_name
		mv $pwd$pre_dir_name $1			#Renaming dir
		echo "Current directory will be renamed to $pre_dir_name"
	fi
fi

