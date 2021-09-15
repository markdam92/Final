#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
clear
figlet -f small Panel SSH | lolcat
echo -e ""
echo -e "======================================" | lolcat
echo -e ""
echo -e "     [1]  Create SSH & OpenVPN Account"
echo -e "     [2]  Trial Account SSH & OpenVPN"
echo -e "     [3]  Renew SSH & OpenVPN Account"
echo -e "     [4]  Delete SSH & OpenVPN Account"
echo -e "     [5]  Check User Login SSH & OpenVPN"
echo -e "     [6]  Daftar Member SSH & OpenVPN"
echo -e "     [7]  Delete User Expired SSH & OpenVPN"
echo -e "     [8]  Set up Autokill SSH"
echo -e "     [9]  Cek Users Who Do Multi Login SSH"
echo -e "     [10] Restart Service Dropbear, Squid3"
echo -e "     [x]  Exit"
echo -e "======================================" | lolcat
echo -e ""
read -p "     Select From Options [1-10 or x] :  " port
echo -e ""
case $port in
1)
add-ssh
;;
2)
trial-ssh
;;
3)
renew-ssh
;;
4)
del-ssh
;;
5)
cek-ssh
;;
6)
list-ssh
;;
7)
delete
;;
8)
autokill
;;
9)
mulog
;;
10)
restart
;;
x)
clear
menu
;;
*)
echo "Please enter an correct number"
;;
esac
