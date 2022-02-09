#!/bin/bash

echo "Enter username"
read name

#to find all the files owned by a user and store it in a file
find / -user "$name" > file1.txt

total_count=$(cat file1.txt | wc -l)
echo "The total number of files owned by $name is : $total_count"

