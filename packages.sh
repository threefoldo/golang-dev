#!/usr/bin/env bash

sudo sed -i 's/us.archive.ubuntu.com/mirrors.163.com/g' /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y screen emacs24 git
sudo apt-get install -y docker.io

