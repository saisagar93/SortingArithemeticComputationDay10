#!/bin/bash

echo -ne "\n"

read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter Third Number : " c

echo "The Numbers Are $a $b $c"

p=$(( a+(b*c) ))

echo "The Result is" $p

