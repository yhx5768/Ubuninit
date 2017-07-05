#!/bin/bash
source ./apt_getw.sh

sudo dpkg --add-architecture i386
apt_getw update
apt_getw -y install curl aria2 python-pip exfat-fuse exfat-utils
