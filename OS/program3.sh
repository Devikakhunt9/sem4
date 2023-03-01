str="this is a demo string!!"
printf "${str:3:7}\n"

printf "Enter a string : "
read str1
printf "Enter starting indesx of substring : "
read n1
printf "Enter ending index of substring : "
read n2
printf "${str1:$n1:$n2}"