#!/bin/bash

DIRECTORY="dirone"  #write directory path here

if [[ -d "$DIRECTORY" ]]
then
    echo "$DIRECTORY exists on your filesystem."
    #update the timestamps of files inside the directory 
    file_name=test_files.txt
 
    current_time=$(date "+%Y.%m.%d-%H.%M.%S")
    echo "Current Time : $current_time"
 
    new_fileName=$file_name.$current_time
    echo "New FileName: " "$new_fileName"
 
    cp $file_name $new_fileName
    echo "Timestamp updated"

else
    mkdir "$DIRECTORY"
    cd "$DIRECTORY"
    echo 'Hello World' > test.txt
    echo "Printing test file data"
    cat test.txt
fi
