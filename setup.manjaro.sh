#!/bin/bash -eu

/bin/bash setup.common.sh

echo " 🏝 cp ./manjaro/zshrc ~/.zshrc"
cp ./manjaro/zshrc ~/.zshrc

echo " 🏝 pacman -S ..."
sudo pacman -S vim jq tree curl wget starship

echo " 🏝 source ~/.zshrc"
source ~/.zshrc
