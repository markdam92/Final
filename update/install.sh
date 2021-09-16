#!/bin/bash
cd /usr/bin
wget -q -O menu "https://raw.githubusercontent.com/markdam92/Final/main/update/menu.sh"
chmod +x menu && sed -i -e 's/\r$//' menu

