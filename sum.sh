arr=(19 21 555 4 15 26 7)

#sum of digits of first number
Num=${arr[0]}  
g=$Num
 
s=0
 
# while loop to calculate the sum of all digits
while [ $Num -gt 0 ]
do
    k=$(( $Num % 10 ))
    Num=$(( $Num / 10 ))
    s=$(( $s + $k ))
done

max=$s

# Loop through all elements in the array
for i in "${arr[@]}"
do
     num=$i  
     gg=$num
 
     ss=0 

     while [ $num -gt 0 ]
     do
          kk=$(( $num % 10 ))
          num=$(( $num / 10 ))
          ss=$(( $ss + $kk ))
     done

     max2=$ss


    # Update max if applicable
    if [[ "$max2" -gt "$max" ]]; then
        max="$max2"
	res="$i"
    fi
done

# Output results:
echo "Number in the array whose digits have the highest sum: $res"



