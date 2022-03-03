<<comments
Name:Yashas B K
Date: 30/10/21
Description: Given album name and corresponding directory, this script  renames the jpg files with new name passed through command line.
Input: ./16_rename_album.sh day_out
Output: All .jpg files in current directory is renamed as
	day_out001.jpg day_out002.jpg
comments

#!/bin/bash

if [ $# -le 0 ]  				 #Checking the CLA
then
	echo "Error: Please pass the prefix name through command line."  
    else	
	arr=(`ls *.jpg`)			#Saving all .jpg to a array
	num_ext=0
	for i in `seq 0 $((${#arr[@]}-1))`	#loop through the array
	do
	   num_ext=`echo ${arr[$i]}|tr -d DSN`	#Deleting the DSN
	   mv ${arr[$i]} $1$num_ext		#renaming the file
	done
	echo "All .jpg files in current directory is renamed as"
	ls *.jpg							#Displaying all jpg's
fi
