#!/bin/bash

# https://github.com/golang/go/wiki/Ubuntu

sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt-get update
sudo apt-get install golang-go

#echo "Downloading Go Binary..."
#wget https://dl.google.com/go/go$GO_VERSION.linux-amd64.tar.gz

#echo "Installing to /usr/local..."
#tar -C /usr/local -xzf go$GO_VERSION.linux-amd64.tar.gz

#echo 'PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc

#echo 'GOPATH=$HOME/go' >> ~/.bashrc
