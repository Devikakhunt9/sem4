echo "Enter Month:"
read month
case $month in
1)
    echo "31 days"
    ;;
2)
    echo "28 days"
    ;;
3)
    echo " 31days"
    ;;
4)
    echo "30 days"
    ;;
*)
    echo "Enter Valid"
    ;;
esac
