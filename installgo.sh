#!/bin/bash

#sudo apt-get install mercurial bison
#sudo apt-get install gcc binutils make
#bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
#source /home/vagrant/.gvm/scripts/gvm
#gvm install go1.4

mkdir -p $HOME/golang/packages
tar zxvf go*.tar.gz -C $HOME/golang
echo "PATH=\"$HOME/golang/go/bin:\$PATH\"" >> $HOME/.profile
echo "export GOROOT=$HOME/golang/go" >> $HOME/.profile
echo "export GOPATH=$HOME/golang/packages" >> $HOME/.profile
source $HOME/.profile
go get code.google.com/p/go.tools/cmd/oracle
