#!/bin/bash

echo "Installing zsh..."

sudo apt-get install zsh

echo "Setting zsh as default shell"
chsh -s /usr/bin/zsh

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

if grep -q "source ~/dotfiles/zsh/zshrc" "$HOME/.zshrc";
then
  echo ".zshrc already contains source to custom zshrc"
else
  echo "source ~/dotfiles/zsh/zshrc" >> ~/.zshrc
fi
