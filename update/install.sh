#!/bin/bash
cd /usr/bin
wget -q -O menu "https://raw.githubusercontent.com/markdam92/Final/main/update/menu.sh"
wget -O menu-sssr "https://raw.githubusercontent.com/markdam92/Final/main/menu-sssr.sh"
chmod +x menu && sed -i -e 's/\r$//' menu

