<<comments
Name: Yashas B K
Date: 26/10/21
Description: WAS to perform arithmetic operation on digits of a given number
input: 1234-
output: -8
comments

#!/bin/bash

str=$1
length=${#str}			#Length calculation

if [ $# -ne 0 ]			#Checking whether CLA is passed or not		
then
    operator=`echo $1 | cut -b $length` 		 #storing operator
    first_left=`echo $1 | cut -b 1`
    case $operator in
	+)					#Addition
	    sum=$first_left
	    for i in `seq 2 $((length-1))`
	    do
		number=`echo $1 | cut -b $i`
		sum=$((sum+number))
	    done
	    echo "Sum is $sum"
	    ;;
	-)					#Subtraction
	    sub=$first_left
	    for i in `seq 2 $((length-1))`
	    do
		number=`echo $1 | cut -b $i`
		sub=$((sub-number))
	    done
	    echo "Sub is $sub"
	    ;;
	x)					#Multiplication
	    mul=$first_left
	    for i in `seq 2 $((length-1))`
	    do
		number=`echo $1 | cut -b $i`
		mul=$((mul*number))
	    done
	    echo "Mul is $mul"
	    ;;
	/)					#Division
	    div=$first_left
	    for i in `seq 2 $((length-1))`
	    do
		number=`echo $1 | cut -b $i`
		div=$((div/number))
	    done
	    echo "Div is $div"
	    ;;
	%)				#Remainder
	    rem=$first_left
	    for i in `seq 2 $((length-1))`
	    do
		n=`echo $1 | cut -b $i`
		rem=$((rem%n))
	    done
	    echo "Rem is $rem"
	    ;;
	*)
	    echo "Error: Operator missing or invalid operator, please pass operator as last digit(+,-,x,/)"				
	    ;;
    esac
else
    echo "Error: Please pass the argument."
fi
		
