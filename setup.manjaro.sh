#!/bin/bash -eu

/bin/bash setup.common.sh

echo " 🏝 cp -f ./manjaro/config/ ~/.config/"
cp -f ./manjaro/config/ ~/.config/

echo " 🏝 pacman -S ..."
sudo pacman -S vim jq tree curl wget starship gnome-tweaks

echo " 🏝 pamac install ..."
sudo pamac install conky

echo " 🏝 source ~/.zshrc"
source ~/.zshrc
