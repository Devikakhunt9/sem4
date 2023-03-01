for ((i=1;i<=5;i++))
do
    for ((k=5;k>i;k--))
    do
        printf " "
    done
    for ((j=1;j<=i;j++))
        do
            printf "* "
        done
    printf "\n"
done
