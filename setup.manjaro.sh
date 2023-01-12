#!/bin/bash -eu

/bin/bash setup.common.sh

echo " 🏝 cp -r ./manjaro/config/ ~/.config/"
cp -r ./manjaro/config/ ~/.config/

echo " 🏝 pacman -S ..."
sudo pacman -S neovim jq tree curl wget starship gnome-tweaks

echo " 🏝 pamac install ..."
sudo pamac install conky

echo " 🏝 source ~/.zshrc"
source ~/.zshrc
