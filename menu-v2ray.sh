#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
clear
figlet -f small Panel V2ray | lolcat
echo -e ""
echo -e "======================================" | lolcat
echo -e ""
echo -e "   [01]    Create Vmess v2ray WS"
echo -e "   [02]    Delete Vmess v2ray WS"       
echo -e "   [03]    Extending Vmess Account "
echo -e "   [04]    Check User Login V2ray" 
echo -e "   [05]    Renew Certificate V2ray Account"                                                         
echo -e ""
echo -e "======================================" | lolcat
echo -e ""
echo -e "   [06]    Create Vless V2ray Ws" 
echo -e "   [07]    Deleting Vless V2ray Ws"
echo -e "   [08]    Extending Vless Account"
echo -e "-  [09]    Check User Login V2ray"
echo -e ""
echo -e "======================================" | lolcat
echo -e ""
read -p "     Select From Options [1-9 or x] :  " num
echo -e ""
case $num in
1)
add-ws
;;
2)
del-ws
;;
3)
renew-ws
;;
4)
cek-ws
;;
5)
cert2vray
;;
6)
add-vless
;;
7)
del-vless
;;
8)
renew-vless
;;
9)
cek-vless
;;
x)
clear
menu
;;
*)
echo "Please enter an correct number"
;;
esac
