#!/usr/bin/env bash

read -p "Enter String:" str
length=${#str}
# echo $length
for((i=$length-1;i>=0;i--)); do
    reverse="$reverse${str:i:1}"
done
if [ $str == $reverse ]
then
    echo "Palindrome"
else
    echo "Not Pallindrome"
fi






