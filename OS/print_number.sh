echo "Enter starting number"
read n1
echo "Enter ending number"
read n2

while [ $n1 -le $n2 ]
do
    echo "$n1"
    n1=`expr $n1 + 1`

done 