#!/bin/bash
source ./apt_getw.sh

sudo apt install -y shadowsocks

cp -r ./base/shadowsocks ~/Tools

sslocal -c ~/Tools/shadowsocks/config.json start &

cp -r ./base/proxy/.proxychains ~/

sudo apt-get -y install proxychains

sudo sed -i "s/LD_PRELOAD=libproxychains.so.3/LD_PRELOAD=\/usr\/lib\/x86_64-linux-gnu\/libproxychains.so.3/g" /usr/bin/proxychains

sudo apt-get -y install polipo

sudo cp base/polipo/config /etc/polipo

sudo service polipo restart
