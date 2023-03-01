echo "Enter base number"
read x
echo "Enter powered number"
read y
i=0
ans=1
while [ $i -ne $y ]
do
    ans=`expr $ans \* $x`
    i=`expr $i + 1`
done

printf "$ans"