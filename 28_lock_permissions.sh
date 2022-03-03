<<comments
Name: Yashas B K
Date: 10/11/21
Description: WAS that locks down file permissions for a particular directory
Input: ./28_lock_permissions.sh Dir/
Output:
Before locking
total 0
-rw-rw-r-- 1 biju biju 0 Jun
-rw-rw-r-- 1 biju biju 0 Jun
-rw-rw-r-- 1 biju biju 0 Jun
8 12:37 D2file1
8 12:37 D2file2
8 12:37 D2file3
After locking
total 0
-rw------- 1 biju biju 0 Jun 8 12:37 D2file1
-rw------- 1 biju biju 0 Jun 8 12:37 D2file2
-rw------- 1 biju biju 0 Jun 8 12:37 D2file3
comments

#!/bin/bash

if [ $# -ne 0 ] 	#Checking command line argument
then
    echo "Before locking"	
    ls -l $1
    echo "After locking"
    chmod go-rwx -R $1		#Changing permissions
    ls -l $1
else
    echo "Error: Please pass the directory in command line"
fi
