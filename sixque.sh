#!/bin/bash
echo "Enter purchase amount: "
read amt

if [ 1500 -gt $amt ]
then
temp=`expr $amt \* 100`
taxamt=`expr 1.5 / $temp`

temp2=`expr 10 \* $amt`
dis=`expr $temp2 / 100`

tot=`expr $amt - $dis`
t=`expr $tot + $taxamt`
echo "Total amount: $t"

else
temp=`expr $amt \* 100`
taxamt=`expr 3 / $temp`

temp2=`expr 20 \* $amt`
dis=`expr $temp2 / 100`

tot=`expr $amt - $dis`
t=`expr $tot + $taxamt`
echo "Total amount: $t"

fi
