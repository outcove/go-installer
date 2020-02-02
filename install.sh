#!/bin/bash

GO_VERSION=1.13.7

if [[ -d "/usr/local/go" ]]
then
    echo "Go already installed."
    exit
fi

echo "Downloading Go Binary..."
wget https://dl.google.com/go/go$GO_VERSION.linux-amd64.tar.gz

echo "Installing to /usr/local..."
sudo tar -C /usr/local -xzf go$GO_VERSION.linux-amd64.tar.gz

if [[ $GOPATH != "" ]]
then
    echo "Setting  Paths..."
    echo 'PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
    echo 'GOPATH=$HOME/go' >> ~/.bashrc
fi

echo "...done."
