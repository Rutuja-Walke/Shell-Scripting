#create a script file 
$ sudo vi data_backup.sh

---------------------------------------------------------
#!/bin/bash
echo "Enter source and destination path : "
s=$(read source)
d=$(read dest)

echo "Enter Compression method : "
read c_method

#considering Top 15 file compression utilities in Linux
#this script considers tar compression method

d="${d}.tar"

timestamp=date +%b-%d-%y
#sudo tar -cvf /backupfolder/backup.tar /home/data
sudo tar -cvf $d $s

-------------------------------------------------------------

#terminal cmd to make the script executable
$sudo chmod +x data_backup.sh

#script verification
$ sudo /home/data_backup.sh