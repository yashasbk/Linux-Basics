<<comments
Name: Yashas B K
Date: 31/10/21
Description: Script to convert string lower to upper and upper to lower
Input:./22_upper_lower.sh file.txt
Output:
1 - Lower to upper
2 - Upper to lower
Please select option:1
WHAT IS OS?
WHEN IS IT USED?
comments

#!/bin/bash

if [ $# -eq 0 ]                   #Checking CLA
then
    echo "Error: Please pass the file name through command line."
else
    if [ -f $1 ]		#Checking CLA is file or not
    then
	if [ -s $1 ]		#Checking file has content or not
	then
	    echo -e "1 - Lower to upper\n2 - Upper to lower "
	    read -p "Please select option: " option
	    if [ $option -eq 1 ]
	    then
		cat $1|tr [:lower:] [:upper:]	#converting lower to upper and display
	    elif [ $option -eq 2 ]
	    then
		cat $1|tr [:upper:] [:lower:]	#converting upper to lower and display
	    fi
	else
	    echo "Error: No contents inside the file."
	fi
    else
	echo "Error: File is not fle.txt"
    fi
fi
