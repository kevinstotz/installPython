#!/bin/sh

sudo apt -y install gcc
sudo apt -y install groupinstall "Development tools"
sudo apt -y install zlib-devel openssl-devel
wget https://www.python.org/ftp/python/$1/Python-$1.tar.xz
tar xJf Python-$1.tar.xz
cd Python-$1
./configure --prefix=/usr/local
sudo make -y install
python3 --version
