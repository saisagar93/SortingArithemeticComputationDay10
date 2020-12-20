#!/bin/bash

echo -ne "\n"

read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter Third Number : " c

echo "The Numbers Are $a $b $c"

p=$(( a+(b*c) ))
q=$(( (a*b)+c ))
r=$(( c+(a/b) ))
s=$(( a%b/c ))


echo "The Result is" $p
echo "The Result is" $q
echo "The Result is" $r
echo "The Result is" $s

declare -A res
res[0]=$p
res[1]=$q
res[2]=$r
res[3]=$s

array[((count++))]=${res[1]}
array[((count++))]=${res[2]}
array[((count++))]=${res[3]}
array[((count++))]=${res[4]}

echo "Array Is ${array[@]}"
for ((i = 0; i<4-1; i++))
do

    for((j = 0; j<4-i-1; j++))
    do

        if [ ${array[$j]} -lt ${array[$((j+1))]} ]
        then
            # swap
            temp=${array[j]}
            array[j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
        fi
    done
done
for ((i=0; i<4; i++))
do
	array2[((count2++))]=${array[i]}
done
echo "sorted array is ${array2[@]}"
