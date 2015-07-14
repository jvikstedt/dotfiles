#!/bin/bash

echo "Installing neovim and prerequisites..."

sudo apt-get install python-dev python-pip python3-dev python3-pip

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

echo "Installing neovim configs"

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [ -f ~/.nvimrc ];
then
  echo "Found existing vimrc, skipping vimrc linking";
else
  echo "Linking vimrc"
  ln -s ${DIR}/vimrc ~/.nvimrc
fi

if [ -d ~/.nvim/ ];
then
  echo "Found existing nvim folder, skipping linking";
else
  echo "Linking .nvim"
  ln -s ${DIR} ~/.nvim
fi
