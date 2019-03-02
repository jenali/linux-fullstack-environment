#!/bin/bash

cd /tmp

# update base system
echo 'Start update & upgrade base system.'
apt-get update -y
apt-get upgrade -y

# install base program

# install git
echo 'Install git...'
apt install git -y
git config --global user.name "e.v.yolkin"
git config --global user.email "e.v.yolkin@gmail.com"
git --version


# install php
echo 'Install php...'
apt-get install php7.2 -y
apt-get install php-pear php7.2-curl php7.2-dev php7.2-gd php7.2-mbstring php7.2-zip php7.2-mysql php7.2-xml -y
php -v

# install composer
echo 'Install composer...'
sudo apt install composer -y

# install node, npm, yarn
sudo apt install build-essential checkinstall
sudo apt install libssl-dev
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
source /etc/profile
nvm install 10.0
nvm use 10.0

# install nodejs modules
npm install -g yarn


