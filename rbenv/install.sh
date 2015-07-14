#!/bin/bash

echo "Installing rbenv..."

if [ -d ~/.rbenv/ ];
then
  echo "Found existing .rbenv folder, skipping...";
else
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
fi

if [ -d ~/.rbenv/plugins/ruby-build ];
then
  echo "Found existing .rbenv/plugins/ruby-build folder, skipping...";
else
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
fi

if grep -q 'export PATH="$HOME/.rbenv/bin:$PATH"' "$HOME/.zshrc";
then
  echo "rbenv path already is set to zshrc"
else
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
fi

if grep -q 'export PATH="$HOME/.rbenv/bin:$PATH"' "$HOME/.bashrc";
then
  echo "rbenv path already is set to bashrc"
else
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
fi

if grep -q 'eval "$(rbenv init -)"' "$HOME/.bashrc";
then
  echo "rbenv init already is set to bashrc"
else
  echo 'eval "$(rbenv init -)"' >> ~/.bashrc
fi

if grep -q 'eval "$(rbenv init -)"' "$HOME/.zshrc";
then
  echo "rbenv init already is set to zshrc"
else
  echo 'eval "$(rbenv init -)"' >> ~/.zshrc
fi
