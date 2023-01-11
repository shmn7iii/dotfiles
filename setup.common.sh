#!/bin/bash -eu

echo " 🏝 ln -fs ./aliases ~/.aliases"
ln -fs ./aliases ~/.aliases

echo " 🏝 ln -fs ./vimrc ~/.vimrc"
ln -fs ./vimrc ~/.vimrc

echo " 🏝 cp -f ./.config/ ~/.config/"
cp -f ./config/ ~/.config/
