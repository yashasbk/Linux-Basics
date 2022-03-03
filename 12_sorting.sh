<<comments
Name: Yashas B K
Date:09/11/21
Description: WAS to sort a given number in ascending or descending order
Input: ./12_sorting.sh -a 5 4 6 2 3 8 9 7 1
Output: 
Ascending order of array is 1 2 3 4 5 6 7 8 9
comments

#!/bin/bash
arr=($@)
arr[0]=""
n=2
if [ $# -ne 0 ]
then
    if [ $1 = "-a" -o $1 = "-d" ]
    then
	if [ $1 = "-a" ]
	then
	    for i in `seq 1 $((${#arr[@]}-1))`
	    do
		for j in `seq $n $((${#arr[@]}-1))`
		do
		    if [ ${arr[i]} -gt ${arr[j]} ]
		    then
			temp=${arr[i]}
			arr[i]=${arr[j]}
			arr[j]=$temp
		    fi
		done
		n=$((n+1))
	    done
	    echo "Ascending order of array is${arr[@]}"
	fi

	if [ $1 = "-d" ]
	then
	    for i in `seq 1 $((${#arr[@]}-1))`
	    do
		for j in `seq $n $((${#arr[@]}-1))`
		do
		    if [ ${arr[i]} -lt ${arr[j]} ]
		    then
			temp=${arr[i]}
			arr[i]=${arr[j]}
			arr[j]=$temp
		    fi
		done
		n=$((n+1))
	    done
	    echo "Descending order of array is${arr[@]}"
	fi
    else
	echo "Error: Please pass the choice."
    fi
else
    echo "Error: Please pass the argument through command line."
    echo "Usage:./12_sorting -a/-d 4 23 5 6 3"
fi
