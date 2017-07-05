#!/bin/bash

git config --global user.name "yhx5768"
git config --global user.email "yhx5768@hotmail.com"

git config --global push.default "simple"

git config --global gui.editor "subl"


# http://stackoverflow.com/questions/3659602/bash-script-for-generating-ssh-keys
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
