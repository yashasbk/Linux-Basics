<<comments
Name: Yashas B K
Date: 10/11/21
Description: WAS for generating random 8-character passwords including alpha numeric characters
Input: ./20_random_password.sh
Output: nH@rTm9h
comments

#!/bin/bash
head -1 /dev/urandom|tr -dc [:print:]|tr -d [:space:]|head -c8 #printing 8 character password
echo
