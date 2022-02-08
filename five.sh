echo "Enter string1 and string 2:"
read s
read t
i=0
while [ $i -ne ${#s} ]
do
    c=${s:$i:1}
    if [[ $result != *$c* && $t == *$c* ]]
    then
      result=$result$c
    fi
    ((i++))
done
echo $result

