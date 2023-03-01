echo "enter no : "
read n1
if [ `expr $n1 % 2` -eq 0 ]
then
echo "Even"
else
echo "Odd"
fi