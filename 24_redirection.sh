<<comments
Name: Yashas B K
Date: 10/11/21
Description: Use pipes or redirection to create an infinite feedback loop
Input:./24_redirection.sh
Output: 
Before loop file contents
Hai hello
After loop file contents
Hai hello
Hai hello
Hai hello
Hai hello
Hai hello
Hai hello
Hai hello
comments

#!/bin/bash

echo "Before loop file contents"
echo "Hai hello" > hello.sh | cat hello.sh 
echo "After loop file contents"
tail -f hello.sh >> hello.sh|cat hello.sh

