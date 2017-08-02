#!/bin/bash

if [[ "$1" == "setup" ]]; then
    proxychains wget https://atom-installer.github.com/v1.18.0/atom-amd64.deb -P ~/Tmp

    cd ~/Tmp
    sudo dpkg -i atom-amd64.deb
fi

if [[ "$1" == "setting" ]]; then
    mkdir ~/.atom
    cp $UBUINT/bin/atom/* ~/.atom/
fi
