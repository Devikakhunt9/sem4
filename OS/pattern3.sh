a=0
for ((i=1;i<=5;i++))
do  
    for ((j=1;j<=i;j++))
    do  
        a=`expr $a + 1`
        printf "$a "
    done
    printf "\n"
done