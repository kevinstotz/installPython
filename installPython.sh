#!/bin/sh

sudo yum -y groupinstall "Development tools"
sudo yum -y install zlib-devel openssl-devel
wget https://www.python.org/ftp/python/$1/Python-$1.tar.xz
tar xJf Python-$1.tar.xz
cd Python-$1
./configure --prefix=/usr/local
sudo make install
python3 --version
