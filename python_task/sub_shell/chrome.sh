#!/bin/bash

proxychains wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/Tmp

cd ~/Tmp
sudo dpkg -i google-chrome-stable_current_amd64.deb
