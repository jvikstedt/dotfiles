#!/bin/bash

echo "Installing vim and prerequisites..."

echo "Installing vim configs"

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [ -f ~/.vimrc ];
then
  echo "Found existing vimrc, skipping vimrc linking";
else
  echo "Linking vimrc"
  ln -s ${DIR}/vimrc ~/.vimrc
fi

if [ -d ~/.vim/ ];
then
  echo "Found existing vim folder, skipping linking";
else
  echo "Linking .vim"
  ln -s ${DIR} ~/.vim
fi
