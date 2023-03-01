echo "Enter a number"
read n
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
    printf "palindrome"
else
    printf "non palindrome"
fi