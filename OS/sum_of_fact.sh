echo "Enter nth number : "
read n
j=1
sum=0
while [ $j -le $n ]
do
    multi=1
    i=1
    while [ $i -le $j ]
    do 
        multi=`expr $multi \* $i `
        i=`expr $i + 1`
    done
    sum=`expr $sum + $multi`
    j=`expr $j + 1`
done
printf "$sum"