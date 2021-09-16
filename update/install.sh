#!/bin/bash
cd /usr/bin
wget -q bannerku "https://raw.githubusercontent.com/Pokmatt/castell/unix/update/bannerku"
wget -q -O menu "https://raw.githubusercontent.com/Pokmatt/castell/unix/update/menu.sh"
wget -q -O bbr "https://raw.githubusercontent.com/Pokmatt/castell/unix/update/bbr.sh"
wget -q -O ssh "https://raw.githubusercontent.com/Pokmatt/castell/unix/update/ssh.sh"
wget -q -O ssssr "https://raw.githubusercontent.com/Pokmatt/castell/unix/update/ssssr.sh"
wget -q -O trojaan "https://raw.githubusercontent.com/Pokmatt/castell/unix/update/trojaan.sh"
wget -q -O v2raay "https://raw.githubusercontent.com/Pokmatt/castell/unix/update/v2raay.sh"
wget -q -O vleess "https://raw.githubusercontent.com/Pokmatt/castell/unix/update/vleess.sh"
wget -q -O wgr "https://raw.githubusercontent.com/Pokmatt/castell/unix/update/wgr.sh"
chmod +x bannerku && sed -i -e 's/\r$//' bannerku
chmod +x menu && sed -i -e 's/\r$//' menu
chmod +x bbr && sed -i -e 's/\r$//' bbr
chmod +x ssh  && sed -i -e 's/\r$//' ssh
chmod +x ssssr && sed -i -e 's/\r$//' ssssr
chmod +x trojaan && sed -i -e 's/\r$//' trojaan
chmod +x v2raay && sed -i -e 's/\r$//' v2raay
chmod +x vleess && sed -i -e 's/\r$//' vleess
chmod +x wgr && sed -i -e 's/\r$//' wgr
