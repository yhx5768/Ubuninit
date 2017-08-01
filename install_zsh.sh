#!/bin/bash
source ./apt_getw.sh

apt_getw -y install git zsh

if ping6 -c 1 mirrors6.tuna.tsinghua.edu.cn >> /dev/null 2>&1; then
    echo "ipv6 ok"
else
    echo "ipv6 not work, please check it!"
    exit 1
fi


wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O zsh-install.sh

sed -i "s/env zsh//g" zsh-install.sh
sed -i "s/chsh -s/whoami | xargs sudo chsh -s/g" zsh-install.sh

sh zsh-install.sh

rm zsh-install.sh

sed -i "s/export PATH=\"\//export PATH=\"\$PATH:\//" ~/.zshrc
sed -i "s/plugins=(git)/plugins=(git python)/g" ~/.zshrc
