echo "Enter a number"
read n
i=2
flag=1
while [ $i -le $(($n / 2)) ]
do
    if [ $(($n % $i)) -eq 0 ]
    then
        flag=0
        break
    fi
    i=`expr $i + 1`
done
if [ $flag -ne 0 ]
then
    echo  "$n is prime"
else
    echo "$n is non prime"
fi
