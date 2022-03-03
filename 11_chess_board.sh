<<comments
Name: Yashas B K
Date: 26/10/21
Description: WAS to print chessboard on terminal
Input: 
Output:Prints chessboard
comments

#!/bin/bash
rows=8
columns=8

for row in `seq $rows`
do 
    for column in `seq $columns`
    do
	if [ $((row%2)) -eq 1 ]
	then
	    if [ $((column%2)) -eq 1 ]
	    then 
		echo -e -n "\e[47m" " " #prints white box if both row and column is even
	    else
		echo -e -n "\e[40m" " " #prints black box if row is even and column is odd
	    fi
	else
	    if [ $((column%2)) -eq 1 ]
	    then
		echo -e -n "\e[40m" " " #prints black if row is odd and column is even
	    else
		echo -e -n "\e[47m" " " #prints white if row is odd and column is odd
	    fi
	fi
    done
    echo -e -n "\e[0m" " "    #makes the color normal at end of each row
    echo		      #To start new row in next line
done
