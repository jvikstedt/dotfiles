#!/bin/bash

echo "Installing tmuxinator..."

gem install tmuxinator -v 0.6.9

if [ -d ~/.tmuxinator/ ];
then
  echo ".tmuxinator folder already exists";
else
  ln -s ~/dotfiles/tmuxinator/projects ~/.tmuxinator
fi
