#!/usr/bin/env bash
echo "Enter Ur Choice:"
printf "1.Current Month\n2.Today's date\n3.Current User\n4.Display ur Name at Position: "
read choice
case "${choice}" in
1)
cal
;;
2)
date
;;
3)
whoami
;;
4)
echo "Enter Name:"
read name
echo "Enter Position X:"
read x
echo "Enter Position Y:"
read y
echo -e "\033[$((x));$((y))H$name"
;;
*)
echo "default (none of above)"
;;
esac
