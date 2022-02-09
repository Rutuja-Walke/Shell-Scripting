#output of which java command
~$ which java
/usr/bin/java

#!/bin/bash

#to check if java is installed on the system
is_installed=$(which java)
var="usr/bin/java"

if [ "$is_installed" = "$var" ]
then
	echo "Java is installed on the system"
else
	#To install the OpenJDK JRE
	sudo apt install default-jre 

	#installing

	#Create a directory to install JRE in with:
	sudo mkdir /usr/local/java
	
	#Move the JRE binaries into the directory:
	sudo mv jre-8u291-linux-x64.tar.gz /usr/local/java

	#Go into the install directory:
	cd /usr/local/java

	#Unpack the tarball:
	sudo tar zxvf jre-8u291-linux-x64.tar.gz

	#Post-installation steps
	#To save space, delete the tarball by running:
	sudo rm jre-8u291-linux-x64.tar.gz

	#Let the system know where JRE is installed:
	sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jre1.8.0_291/bin/java" 1
	
	#After that’s done, check the installation by running:
	java -version

fi