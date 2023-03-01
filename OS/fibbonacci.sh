#!/usr/bin/env bash
read -p "Enter Length Of Series:" n
sum=0
a=0
b=1

printf "$a $b "
for((i=2;i<n;i++)); do
    sum=`expr $a + $b`
    printf "$sum "
    a="$b"
    b="$sum"

done
