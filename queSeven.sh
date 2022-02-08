#!/bin/bash

DIRectory="dirone"  #write directory path here

if [[ -d "$DIRECTORY" ]]
then
    echo "$DIRECTORY exists on your filesystem."
    #update the timestamps of files inside the directory
else
    mkdir "$DIRECTORY"
    cd "$DIRECTORY"
    echo 'Hello World' > test.txt
fi

echo "Printing test file data"
cat test.txt
