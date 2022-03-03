<<comments
Name: Yashas B K
Date: 10/11/2021
Description: WAS called say_hello,which will print greetings based on time
Output:
Good afternoon user, Have a nice day!
This is Wednesday 10 in November of 2021
comments

#!/bin/bash

day=`date "+%A"`		#Storing required info to variables
date=`date "+%d"`
month=`date "+%B"`
year=`date "+%Y"`
time=`date "+%r"`
hour=`date "+%T"| cut -d ":" -f1`	#extracting hour from time
greeting=""

if [ $hour -ge 5 -a $hour -lt 12 ]
then
    greeting="Good morning"

elif [ $hour -ge 12 -a $hour -le 13 ]
then
    greeting="Good noon"

elif [ $hour -gt 13 -a $hour -lt 17 ]
then
    greeting="Good afternoon"

elif [ $hour -ge 17 -a $hour -lt 21 ]
then
    greeting="Good evening"

else
    greeting="Good night"
fi
echo "$greeting `whoami`, Have a nice day!"			#Greeting
echo "This is $day $date in $month of $year ($time)"
