echo "Enter total number"
read n
i=1
sum=0
while [ $i -le $n ]
do 
    echo "enter number"
    read b
    sum=`expr $sum + $b`
    i=`expr $i + 1`
    
done
average=`expr $sum / $n`
echo "Average is $average"

