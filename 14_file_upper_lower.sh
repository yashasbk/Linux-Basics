<<comments
Name: Yashas B K
Date: 10/11/21
Description: WAS to rename file/directory replaced by lower/upper case letters
Input:./14_file_upper_lower
Output:Files are renamed in lowercase and directories are renamed in upper case
comments

#!/bin/bash

arr=(ls *) 		#Creating an array	

for i in ${arr[@]}
do
    if [ -d $i ]	#To check directory
    then
	mv $i `echo $i | tr [:lower:] [:upper:]`
    elif [ -f $i ]	#To check files
    then
	mv $i `echo $i | tr [:upper:] [:lower:]`
    fi
done
echo "Files are renamed in lowercase and directories are renamed in upper case"

