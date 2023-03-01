echo "Enter nth number : "
read n
multi=1
i=1
while [ $i -le $n ]
do 
    multi=`expr $multi \* $i `
    i=`expr $i + 1`
done
printf "$multi"