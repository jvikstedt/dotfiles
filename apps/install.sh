#!/bin/bash

echo "Installing apps"

sudo apt-add-repository ppa:synapse-core/testing
sudo apt-get update
sudo apt-get install silversearcher-ag
sudo apt-get install exuberant-ctags
sudo apt-get install xclip
sudo apt-get install curl
sudo apt-get install vim-gtk
sudo apt-get install build-essential cmake
sudo apt-get install python-dev
sudo apt-get install synapse
