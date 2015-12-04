#!/bin/bash

echo "Installing git"

sudo apt-get install git

echo "Setting up global git configs and git template"

git config --global core.excludesfile '~/dotfiles/git/gitignore_global'
git config --global init.templatedir '~/dotfiles/git/git_template'
git config --global alias.glog "log --all --pretty='format:%d %Cgreen%h%Creset %an - %s' --graph"
