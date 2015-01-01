#!/bin/bash

# sudo apt-get install mercurial bison
# bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
# source /home/vagrant/.gvm/scripts/gvm
# gvm install go1.4
sudo tar zxvf go*.tar.gz -C /usr/local/
echo "PATH=\"/usr/local/go/bin:\$PATH\"" >> /home/vagrant/.profile
source /home/vagrant/.profile
