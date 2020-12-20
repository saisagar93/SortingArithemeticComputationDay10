#!/bin/bash

echo -ne "\n"

read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter Third Number : " c

echo "The Numbers Are $a $b $c"

p=$(( a+(b*c) ))
q=$(( (a*b)+c ))
r=$(( c+(a/b) ))
s=$(( a%(b/c) ))


echo "The Result is" $p
echo "The Result is" $q
echo "The Result is" $r
echo "The Result is" $s

declare -A res

res[0]=$p
res[1]=$q
res[2]=$r
res[3]=$s

echo "Index Numbers : ${!res[@]}"
echo "Index Numbers : ${res[@]}"
