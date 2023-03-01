echo "Enter initial number"
read n
echo "Enter last number"
read m

i=$n

while [ $i -ne $m ]
do
    r=0
    c=0
    temp=$n
    while [ $n -ne 0 ]
    do
        c=`expr $n % 10`
        r=`expr $r \* 10 + $c`
        n=`expr $n / 10`
    done
    if [ $r -eq $temp ]
    then
        echo "$temp"
    fi
    i=`expr $i + 1`
    n=$i
done