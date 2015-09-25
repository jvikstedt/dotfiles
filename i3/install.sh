#!/bin/bash

echo "Installing i3 configs"

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [ -d ~/.i3/ ];
then
  echo "Found existing i3 folder, skipping linking";
else
  echo "Linking .i3"
  ln -s ${DIR} ~/.i3
fi
