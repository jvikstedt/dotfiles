#!/bin/bash


while test $# -gt 0
  do
    case "$1" in
      --vim)
        ./vim/install.sh
      ;;
      --nvim)
        ./nvim/install.sh
      ;;
      --git)
        ./git/install.sh
      ;;
      --tmux)
        ./tmux/install.sh
      ;;
      --*)
        echo "bad option $1"
      ;;
      *)
        echo "argument $1"
      ;;
    esac
  shift
done
