#!/bin/bash	

echo "Enter directory name : "
read dir

datediff() {
    d1=$(date -d "$1" +%s)
    d2=$(date -d "$2" +%s)
    echo $(( (d1 - d2) / 86400 )) 
}


echo "Enter date in format (date month.. EX 1 Nov): "
read d

echo "Enter todays date (date month.. EX 1 Nov): "
read d_today



days=($ datediff '$d_today' '$d')


find $dir -type f -mtime +($days) -maxdepth 1 -exec rm {} \;