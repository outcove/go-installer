#!/bin/bash

if [[ -f "/usr/local/go" ]]
then
    echo "Go already installed."
    exit
fi

echo "Downloading Go Binary..."
wget https://dl.google.com/go/go$GO_VERSION.linux-amd64.tar.gz

echo "Installing to /usr/local..."
tar -C /usr/local -xzf go$GO_VERSION.linux-amd64.tar.gz

echo "Setting  Paths..."
echo 'PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
echo 'GOPATH=$HOME/go' >> ~/.bashrc
echo "...done."
