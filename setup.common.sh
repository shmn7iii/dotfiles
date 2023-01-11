#!/bin/bash -eu

echo " 🏝 cp ./zshrc ~/.zshrc"
cp ./zshrc ~/.zshrc

echo " 🏝 ln -fs ./aliases ~/.aliases"
ln -fs ./aliases ~/.aliases

echo " 🏝 ln -fs ./vimrc ~/.vimrc"
ln -fs ./vimrc ~/.vimrc

echo " 🏝 Installing rbenv..."
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

echo " 🏝 Installing goenv..."
git clone https://github.com/syndbg/goenv.git ~/.goenv

echo " 🏝 Installing nodenv..."
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build

echo " 🏝 Installing jenv..."
git clone https://github.com/jenv/jenv.git ~/.jenv

echo " 🏝 Installing pyenv..."
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
