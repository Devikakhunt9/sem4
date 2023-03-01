echo "Enter A:"
read a
echo "Enter B:"
read b
if [ `expr $a ` -gt `expr $b` ]
then
echo $a
else
echo $b
fi