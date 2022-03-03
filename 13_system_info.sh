<<comments
Name: Yashas B K
Date: 10/11/21
Description: WAS to print system information using commands
Input: Enter the choice: 2
Output: Your shell directory is /bin/bash
comments

#!/bin/bash
continue='y'
while [ $continue = y ]		#loop to prompt yes or no and continue
do
	echo "1.Currently logged users
	2.Your shell directory
	3.Home directory
	4.OS name & version
	5.Current working directory
	6.Number of users logged in 
	7.Show all available shells in your system
	8.Hard disk information
	9.CPU information
	10.Memory Informations
	11.File system information.
	12.Currently running process."

	read -p "Enter your choice: " choice    #Asking for the choice from user

	case $choice in 
	    1)
		echo "Currently logged user is: " `whoami`
		;;
	    2)
		echo "Your shell directory is $SHELL"
		;;
	    3)
		echo "Home directory is $HOME"
		;;
	    4)
		echo "OS name and version is `uname -ro`"
		;;
	    5)
		echo "Current working directory is `pwd`"
		;;
	    6)
		echo "Number of users logged in are `who -q`"
		;;
	    7)
		echo "All available shells in system are `cat /etc/shells`"
		
		;;
	    8)
		echo "Hard disk information is `hwinfo`"
		;;
	    9)
		echo "CPU information is `lscpu`"
		;;
	    10)
		echo "Memory information is `cat /proc/meminfo`"
		;;
	    11)
		echo "File system information is " `df`
		;;
	    12)
		echo "Currently running processes are " `ps`
		;;
	    *)
		echo "Error:Invalid option,please enter valid option"
		;;
	esac
	read -p "Do you want to continue(y/n)?" continue

done

