#!/bin/bash

sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
echo "deb http://mirrors.neusoft.edu.cn/raspbian/raspbian/ jessie main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://mirrors.neusoft.edu.cn/raspbian/raspbian/ jessie main contrib non-free" >> /etc/apt/sources.list
sudo apt-get -y upgrade
sudo apt-get -y update

sudo apt-get -y remove vim-tiny
sudo apt-get -y install vim

sudo apt-get -y install zsh
sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "source zshrc_ex >> ~/.zshrc"

git config --global user.email "zhangbin_1012@icloud.com"
git config --global user.name "张彬"

sudo curl -s https://install.zerotier.com/ | sudo bash
sudo zerotier-cli 93afae5963c06f6a
