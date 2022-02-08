#!/bin/bash
echo "Enter File Name: "
read fname

if [ -f $fname ]
then
	echo "File is a regular file"
elif [ -r $fname ] 
then
	echo "File is readable"
elif [ -w $fname ]
then
	echo "File is Writable"
elif [ -x $fname ] 
then
	echo "File is Executable"
elif [ -d $fname ] 
then
	echo "File exists and is in directory"                                                                         
elif [ -s $fname ] 
then
	echo "File exists and has size greater than 0"
elif [ ! -e $fname ] 
then
	echo "ERROR. File does not exist"
else
	echo "File exists."
fi
