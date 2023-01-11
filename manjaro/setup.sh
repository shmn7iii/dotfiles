#!/bin/bash -eu

/bin/bash setup.common.sh

echo " 🏝 cp -f ./config/ ~/.config/"
cp -f ./config/ ~/.config/

echo " 🏝 cp ./zshrc ~/.zshrc"
cp ./zshrc ~/.zshrc

echo " 🏝 ln -fs ../aliases ~/.aliases"
ln -fs ../aliases ~/.aliases

echo " 🏝 ln -fs ../vimrc ~/.vimrc"
ln -fs ../vimrc ~/.vimrc

echo " 🏝 pacman -S ..."
sudo pacman -S vim jq tree curl wget starship gnome-tweaks

echo " 🏝 pamac install ..."
sudo pamac install conky

echo " 🏝 source ~/.zshrc"
source ~/.zshrc
