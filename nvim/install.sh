#!/bin/bash

echo "Installing neovim and prerequisites..."

sudo apt-get install python-dev python-pip python3-dev python3-pip

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

echo "Installing neovim configs"


mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config/nvim}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
