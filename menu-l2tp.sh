#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
clear
figlet -f small l2tp/sstp | lolcat
echo -e ""
echo -e "======================================" | lolcat
echo -e ""
echo -e "     [1]  Creating L2TP Account"
echo -e "     [2]  Create Account PPTP"
echo -e "     [3]  Deleting L2TP Account"
echo -e "     [4]  Delete PPTP Account"
echo -e "======================================" | lolcat
echo -e "     [5]  Check User Login PPTP"
echo -e "     [6]  Renew L2TP Account"
echo -e "     [7]  Renew PPTP Account"
echo -e "======================================" | lolcat
echo -e ""
echo -e "     [8]  Create Account SSTP"
echo -e "     [9]  Delete SSTP Account"
echo -e "    [10]  Renew SSTP Account"
echo -e "    [11]  Check User Login SSTP"
echo -e "     [x]  Exit"
echo -e "======================================" | lolcat
echo -e ""
read -p "     Select From Options [1-11 or x] :  " num
echo -e ""
case $num in
1)
add-l2tp
;;
2)
del-l2tp
;;
3)
renew-l2tp
;;
4)
add-pptp
;;
5)
del-pptp
;;
6)
renew-pptp
;;
7)
cek-pptp
;;
8)
add-sstp
;;
9)
del-sstp
;;
10)
renew-sstp
;;
11)
cek-sstp
;;
x)
clear
menu
;;
*)
echo "Please enter an correct number"
;;
esac
