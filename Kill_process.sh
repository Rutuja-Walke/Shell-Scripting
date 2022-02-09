#!/bin/bash

#To list any process listening to the port 3000 for instance:
lsof -i:3000

echo "Proceed to kill process? (Y for Yes)
read input

if [ $input == "Y" ]
then
	#To kill any process listening to the port 3000:
	kill $(lsof -t -i:3000)
fi