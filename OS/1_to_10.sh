# for i in 1 2 3 4 5 6 7 8 9 10
# do
# printf "$i \n"
# done

i=1

# while [ $i -le 10 ]
# do
#     printf "$i\n"
#     i=`expr $i + 1`
# done

until [ $i -gt 10 ]
do  
    printf "$i"
    i=`expr $i + 1`
done