echo "Enter starting number"
read n1
echo "Enter ending number"
read n2

while [ $n1 -le $n2 ]
do
    if [ $(($n1 % 2)) -ne 0 ]
    then
    echo $n1
    fi
    n1=`expr $n1 + 1`
done 