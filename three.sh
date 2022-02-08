#!/bin/bash
echo "Enter string 1 : "
read s1
echo "Enter string 2 : "
read s2

# abcde --> pbrde
# pqr --> aqc

#output strings
o1=""
o2=""

#looping for odd characters
for (( i=0 ; $i<${#s1} ; i=$i+1 ))
do
      if [ "$(( $i % 2 ))" -eq 0 ]
      then
	    o1+="${s2:$i:1}"
      else
	    o1+="${s1:$i:1}"
      fi
done

echo "Output String 1 : $o1"


for (( i=0 ; $i<${#s2} ; i=$i+1 ))
do
      if [ "$(( $i % 2 ))" -eq 0 ]
      then
	    o2+="${s1:$i:1}"
      else
	    o2+="${s2:$i:1}"
      fi
done

echo "Output String 2 : $o2"




  

