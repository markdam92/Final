#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- https://icanhazip.com);
echo "Checking VPS"
izin
clear
COUNTRY=$(curl -s ipinfo.io/country )
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
jam=$(TZ='Asia/Kuala_Lumpur' date +%R)
hari=$(date +"%A")
tnggl=$(date +"%C %B %Y")
source /var/lib/premium-script/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/v2ray/domain)
else
domain=$IP
fi
cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
tram=$( free -m | awk 'NR==2 {print $2}' )
#swap=$( free -m | awk 'NR==4 {print $2}' )
up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

figlet   DynabyteVPN | lolcat
echo -e ""
echo -e "=================================================================" | lolcat
echo -e "                  [ INFORMASI VPS ]" | lolcat
echo -e "=================================================================" | lolcat
echo -e " Zona Waktu             :  Asia/Kuala_Lumpur"
echo -e " Waktu                  :  $jam WIB"
echo -e " Hari                   :  $hari"
echo -e " Tanggal                :  $tnggl"
echo -e "=================================================================" | lolcat
echo -e " Model CPU              :  $cname "
echo -e " Core                   :  $cores Core"
echo -e " Frekuensi CPU          :  $freq MHz "
echo -e " RAM                    :  $tram MB "
echo -e " Uptime                 :  $up "
echo -e " ISP                    :  $ISP "
echo -e " COUNTRY                :  $COUNTRY "
echo -e " CITY                   :  $CITY "
echo -e " IP                     :  $IPVPS "
echo -e " Host                   :  $domain "
echo -e "=================================================================" | lolcat
echo -e "                     [ MENU TUNNELING ]" | lolcat
echo -e "=================================================================" | lolcat
echo -e ""
echo -e "      [1]  SSH & OpenVPN         [2] WIREGUARD "
echo -e "      [3]  L2TP/PPTP/SSTP        [4] SHADOWSOCKR "
echo -e "      [5]  VMESS/VLESS           [6] TROJAN "
echo -e ""
echo -e "	             [ MENU SYSTEM ] " | lolcat
echo -e ""
echo -e "   [7]   Add domain Host For VPS   [18]  Limit Speed"
echo -e "   [8]   Record Domain             [19]  Ram VPS"
echo -e "   [9]   Renew Certificate V2RAY   [20]  Ganti Password VPS"
echo -e "   [10]  Change Port All Account   [21]  Reboot VPS"
echo -e "   [11]  Autobackup VPS            [22]  Speedtest VPS"
echo -e "   [12]  Backup VPS                [23]  Informasi System"
echo -e "   [13]  Restore VPS               [24]  Info Script"
echo -e "   [14]  Menu Webmin               [25]  Restart Service VPN"
echo -e "   [15]  Auto Reboot               [26]  Multi Login SSH"
echo -e "   [16]  Edit Banner SSH           [27]  Update Script"
echo -e "   [17]  Status All Service VPN    [28]  Monitor Bandwith VPS"
echo -e "   [X]     Exit"
echo -e ""
echo -e "================================================================" | lolcat
read -p "     Select From Options [number or x] :  " num
echo -e "================================================================" | lolcat
echo -e ""
case $num in
1)
menu-ssh
;;
2)
menu-wr
;;
3)
menu-l2tp
;;
4)
menu-ss
;;
5)
menu-v2ray
;;
6)
menu-tr
;;
7)
add-host
;;
8)
hostnya
;;
9)
certv2ray
;;
10)
panel-port
;;
11)
autobackup
;;
12)
backup
;;
13)
restore
;;
14)
wbmn
;;
15)
auto-reboot
;;
16)
nano /etc/issue.net
;;
17)
status
;;
18)
limit-speed
;;
19)
ram
;;
20)
passwd
;;
21)
reboot
;;
22)
speedtest
;;
23)
info
;;
24)
about
;;
25)
restart
;;
26)
autokill
;;
27)
update
;;
28)
vnstat
;;
x)
clear
exit
;;
*)
echo "Please enter an correct number"
;;
esac
